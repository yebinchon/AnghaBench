
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct tffs_key_name_table {int size; int * entries; } ;
struct tffs_entry {int dummy; } ;
typedef int FILE ;


 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int SEEK_END ;
 int SEEK_SET ;
 int TFFS_ID_TABLE_NAME ;
 int basename (char*) ;
 int fclose (int *) ;
 int find_entry (int *,int ,struct tffs_entry*) ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*,...) ;
 scalar_t__ fread (int *,int,scalar_t__,int *) ;
 int free (int *) ;
 int fseek (int *,long,int ) ;
 scalar_t__ ftell (int *) ;
 char* input_file ;
 int * malloc (scalar_t__) ;
 int parse_key_names (struct tffs_entry*,struct tffs_key_name_table*) ;
 int parse_options (int,char**) ;
 scalar_t__ print_all_key_names ;
 int progname ;
 scalar_t__ show_all ;
 int show_all_key_names (struct tffs_key_name_table*) ;
 int show_all_key_value_pairs (int *,struct tffs_key_name_table*) ;
 int show_matching_key_value (int *,struct tffs_key_name_table*) ;
 int stderr ;
 scalar_t__ tffs_size ;

int main(int argc, char *argv[])
{
 int ret = EXIT_FAILURE;
 uint8_t *buffer;
 FILE *fp;
 struct tffs_entry name_table;
 struct tffs_key_name_table key_names;

 progname = basename(argv[0]);

 parse_options(argc, argv);

 fp = fopen(input_file, "r");

 if (!fp) {
  fprintf(stderr, "ERROR: Failed to open tffs input file %s\n",
   input_file);
  goto out;
 }

 if (tffs_size == 0) {
  fseek(fp, 0L, SEEK_END);
  tffs_size = ftell(fp);
  fseek(fp, 0L, SEEK_SET);
 }

 buffer = malloc(tffs_size);

 if (fread(buffer, 1, tffs_size, fp) != tffs_size) {
  fprintf(stderr, "ERROR: Failed read tffs file %s\n",
   input_file);
  goto out_free;
 }

 if (!find_entry(buffer, TFFS_ID_TABLE_NAME, &name_table)) {
  fprintf(stderr,"ERROR: No name table found in tffs file %s\n",
   input_file);
  fprintf(stderr,"       Is byte-swapping (-b) required?\n");
  goto out_free;
 }

 parse_key_names(&name_table, &key_names);
 if (key_names.size < 1) {
  fprintf(stderr, "ERROR: No name table found in tffs file %s\n",
   input_file);
  goto out_free_names;
 }

 if (print_all_key_names) {
  show_all_key_names(&key_names);
  ret = EXIT_SUCCESS;
 } else if (show_all) {
  ret = show_all_key_value_pairs(buffer, &key_names);
 } else {
  ret = show_matching_key_value(buffer, &key_names);
 }

out_free_names:
 free(key_names.entries);
out_free:
 fclose(fp);
 free(buffer);
out:
 return ret;
}
