
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_info {scalar_t__ file_size; int file_data; int file_name; } ;
typedef int FILE ;


 int DBG (char*,int ) ;
 int ERR (char*,...) ;
 int fclose (int *) ;
 int * fopen (int ,char*) ;
 scalar_t__ fwrite (int ,int,scalar_t__,int *) ;

__attribute__((used)) static int writeFile(struct file_info* finfo) {
 FILE* fp;

 if (!finfo || !finfo->file_name) {
  ERR("Invalid pointer provided!\n");
  return -1;
 }

 DBG("Opening file: %s\n", finfo->file_name);

 if (!(fp = fopen(finfo->file_name, "w"))) {
  ERR("Error opening file: %s\n", finfo->file_name);
  return -1;
 }

 DBG("Writing file: %s\n", finfo->file_name);

 if (fwrite(finfo->file_data, 1, finfo->file_size, fp) != finfo->file_size) {
  ERR("Wanted to write, but something went wrong!\n");
  fclose(fp);
  return -1;
 }

 fclose(fp);
 return 0;
}
