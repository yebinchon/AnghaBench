
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r_bin_bflt_obj {int endian; int * hdr; scalar_t__ n_got; int * got_table; int * reloc_table; int size; int b; } ;
typedef int RBuffer ;


 int bflt_init_hdr (struct r_bin_bflt_obj*) ;
 int r_buf_ref (int *) ;
 int r_buf_size (int *) ;

__attribute__((used)) static int r_bin_bflt_init(struct r_bin_bflt_obj *obj, RBuffer *buf) {
 obj->b = r_buf_ref (buf);
 obj->size = r_buf_size (buf);
 obj->endian = 0;
 obj->reloc_table = ((void*)0);
 obj->got_table = ((void*)0);
 obj->n_got = 0;
 obj->hdr = ((void*)0);
 if (!bflt_init_hdr (obj)) {
  return 0;
 }
 return 1;
}
