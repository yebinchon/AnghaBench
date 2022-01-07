
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r_bin_mdmp_obj {int dummy; } ;


 int eprintf (char*) ;
 int r_bin_mdmp_init_directory (struct r_bin_mdmp_obj*) ;
 int r_bin_mdmp_init_hdr (struct r_bin_mdmp_obj*) ;
 int r_bin_mdmp_init_parsing (struct r_bin_mdmp_obj*) ;
 int r_bin_mdmp_init_pe_bins (struct r_bin_mdmp_obj*) ;

__attribute__((used)) static int r_bin_mdmp_init(struct r_bin_mdmp_obj *obj) {
 r_bin_mdmp_init_parsing (obj);

 if (!r_bin_mdmp_init_hdr (obj)) {
  eprintf ("[ERROR] Failed to initialise header\n");
  return 0;
 }

 if (!r_bin_mdmp_init_directory (obj)) {
  eprintf ("[ERROR] Failed to initialise directory structures!\n");
  return 0;
 }

 if (!r_bin_mdmp_init_pe_bins (obj)) {
  eprintf ("[ERROR] Failed to initialise pe binaries!\n");
  return 0;
 }

 return 1;
}
