
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_info {int file_size; int file_name; scalar_t__ file_data; } ;
typedef int FILE ;


 int DBG (char*,...) ;
 int ERR (char*,...) ;
 int SEEK_END ;
 int fclose (int *) ;
 int footer_sz ;
 int * fopen (int ,char*) ;
 int fread (scalar_t__,int,int,int *) ;
 int fseek (int *,long,int ) ;
 int ftell (int *) ;
 int header_sz ;
 scalar_t__ is_header ;
 scalar_t__ malloc (int) ;
 int memset (scalar_t__,int ,int) ;
 int rewind (int *) ;

__attribute__((used)) static int copyToOutputBuf(struct file_info* finfo) {
 FILE* fp = ((void*)0);

 int file_sz = 0;
 int extra_sz;
 int hdr_pos;
 int img_pos;

 if (!finfo || !finfo->file_name) {
  ERR("Invalid pointer provided!\n");
  return -1;
 }

 DBG("Opening file: %s\n", finfo->file_name);

 if (!(fp = fopen(finfo->file_name, "rb"))) {
  ERR("Error opening file: %s\n", finfo->file_name);
  return -1;
 }


 rewind(fp);
 fseek(fp, 0L, SEEK_END);
 file_sz = ftell(fp);
 rewind(fp);

 if (file_sz < 1) {
  ERR("Error getting filesize: %s\n", finfo->file_name);
  fclose(fp);
  return -1;
 }

 if (is_header) {
  extra_sz = header_sz;
  hdr_pos = 0;
  img_pos = header_sz;
 } else {
  extra_sz = footer_sz;
  hdr_pos = file_sz;
  img_pos = 0;
 }

 DBG("Filesize: %i\n", file_sz);
 finfo->file_size = file_sz + extra_sz;

 if (!(finfo->file_data = malloc(finfo->file_size))) {
  ERR("Out of memory!\n");
  fclose(fp);
  return -1;
 }


 memset(finfo->file_data + hdr_pos, 0, extra_sz);


 if (fread(finfo->file_data + img_pos, 1, file_sz, fp) != file_sz) {
  ERR("Error reading file %s\n", finfo->file_name);
  fclose(fp);
  return -1;
 }

 DBG("File: read successful\n");
 fclose(fp);

 return hdr_pos;
}
