
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r_bin_bflt_obj {int b; struct r_bin_bflt_obj* hdr; } ;


 int R_FREE (struct r_bin_bflt_obj*) ;
 int r_buf_free (int ) ;

void r_bin_bflt_free(struct r_bin_bflt_obj *obj) {
 if (obj) {
  R_FREE (obj->hdr);
  r_buf_free (obj->b);
  R_FREE (obj);
 }
}
