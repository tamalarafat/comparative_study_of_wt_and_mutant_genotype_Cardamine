# Load all the functions stored in scripts from the folder housing the scripts
scripts_list <- list.files("/home/ytamal2/Documents/2022/Final_part_PhD_Thesis/Functions", pattern = "*.R$", full.names = TRUE) 
sapply(scripts_list, source, .GlobalEnv)


Thaliana_genes =  read.delim("/netscratch/dep_tsiantis/grp_laurent/tamal/2021/Final_Analyses/Input_Files/ATgenes.txt", header = FALSE, col.names = "genes")
Thaliana_genes <- as.character(Thaliana_genes$genes)

storing_dir = "/netscratch/dep_tsiantis/grp_laurent/tamal/2023/Analyses/comparative_study_of_wt_and_mutant_genotype_Cardamine/Liger_Analyses/Liger_analysis_strategy_1/On_coefficient/Analysis_with_CC"

# load the markers file
load("DEGs_and_Markers.RData")

Cluster_DEGs = markers_list[[2]]

markers_GO_annotation(marker_set = Cluster_DEGs, species_gene_set = Thaliana_genes, store_dir = storing_dir, store_folder = "DEGs_and_Markers_GO", GO_results_folder_name = "All_identified_DEGs_GO")
