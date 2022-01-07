
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r_bin_fatmach0_obj_t {int b; int archs; } ;


 int R_FREE (struct r_bin_fatmach0_obj_t*) ;
 int free (int ) ;
 int r_buf_free (int ) ;

void* r_bin_fatmach0_free(struct r_bin_fatmach0_obj_t* bin) {
 if (!bin) {
  return ((void*)0);
 }
 free (bin->archs);
 r_buf_free (bin->b);
 R_FREE (bin);
 return ((void*)0);
}
