
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r_bin_te_obj_t {scalar_t__ endian; int * section_header; int * header; } ;


 int eprintf (char*) ;
 int r_bin_te_init_hdr (struct r_bin_te_obj_t*) ;
 int r_bin_te_init_sections (struct r_bin_te_obj_t*) ;

__attribute__((used)) static int r_bin_te_init(struct r_bin_te_obj_t* bin) {
 bin->header = ((void*)0);
 bin->section_header = ((void*)0);
 bin->endian = 0;
 if (!r_bin_te_init_hdr (bin)) {
  eprintf("Warning: File is not TE\n");
  return 0;
 }
 if (!r_bin_te_init_sections (bin)) {
  eprintf("Warning: Cannot initialize sections\n");
  return 0;
 }
 return 1;
}
