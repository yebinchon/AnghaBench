
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r_bin_coff_obj {int verbose; int size; int b; } ;
typedef int RBuffer ;


 int bprintf (char*) ;
 int r_bin_coff_init_hdr (struct r_bin_coff_obj*) ;
 int r_bin_coff_init_opt_hdr (struct r_bin_coff_obj*) ;
 int r_bin_coff_init_scn_hdr (struct r_bin_coff_obj*) ;
 int r_bin_coff_init_symtable (struct r_bin_coff_obj*) ;
 int r_buf_ref (int *) ;
 int r_buf_size (int *) ;

__attribute__((used)) static int r_bin_coff_init(struct r_bin_coff_obj *obj, RBuffer *buf, bool verbose) {
 obj->b = r_buf_ref (buf);
 obj->size = r_buf_size (buf);
 obj->verbose = verbose;
 if (!r_bin_coff_init_hdr (obj)) {
  bprintf ("Warning: failed to init hdr\n");
  return 0;
 }
 r_bin_coff_init_opt_hdr (obj);
 if (!r_bin_coff_init_scn_hdr (obj)) {
  bprintf ("Warning: failed to init section header\n");
  return 0;
 }
 if (!r_bin_coff_init_symtable (obj)) {
  bprintf ("Warning: failed to init symtable\n");
  return 0;
 }
 return 1;
}
