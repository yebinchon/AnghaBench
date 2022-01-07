
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r_bin_coff_obj {int b; int symbols; int scn_hdrs; } ;


 int R_FREE (struct r_bin_coff_obj*) ;
 int free (int ) ;
 int r_buf_free (int ) ;

void r_bin_coff_free(struct r_bin_coff_obj *obj) {
 free (obj->scn_hdrs);
 free (obj->symbols);
 r_buf_free (obj->b);
 R_FREE (obj);
}
