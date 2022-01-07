
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r_bin_mz_obj_t {int kv; int * relocation_entries; int * dos_extended_header; int * dos_header; } ;


 int eprintf (char*) ;
 int r_bin_mz_init_hdr (struct r_bin_mz_obj_t*) ;
 int sdb_new0 () ;

__attribute__((used)) static bool r_bin_mz_init(struct r_bin_mz_obj_t *bin) {
 bin->dos_header = ((void*)0);
 bin->dos_extended_header = ((void*)0);
 bin->relocation_entries = ((void*)0);
 bin->kv = sdb_new0 ();
 if (!r_bin_mz_init_hdr (bin)) {
  eprintf ("Warning: File is not MZ\n");
  return 0;
 }
 return 1;
}
