
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r_bin_te_obj_t {int b; struct r_bin_te_obj_t* section_header; struct r_bin_te_obj_t* header; } ;


 int free (struct r_bin_te_obj_t*) ;
 int r_buf_free (int ) ;

void* r_bin_te_free(struct r_bin_te_obj_t* bin) {
 if (!bin) {
  return ((void*)0);
 }
 free (bin->header);
 free (bin->section_header);
 r_buf_free (bin->b);
 free (bin);
 return ((void*)0);
}
