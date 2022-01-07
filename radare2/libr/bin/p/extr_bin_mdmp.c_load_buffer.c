
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut64 ;
struct r_bin_mdmp_obj {int kv; } ;
typedef int Sdb ;
typedef int RBuffer ;
typedef int RBinFile ;


 struct r_bin_mdmp_obj* r_bin_mdmp_new_buf (int *) ;
 int r_return_val_if_fail (int *,int) ;
 int sdb_ns_set (int *,char*,int ) ;

__attribute__((used)) static bool load_buffer(RBinFile *bf, void **bin_obj, RBuffer *buf, ut64 loadaddr, Sdb *sdb) {
 r_return_val_if_fail (buf, 0);
 struct r_bin_mdmp_obj *res = r_bin_mdmp_new_buf (buf);
 if (res) {
  sdb_ns_set (sdb, "info", res->kv);
  *bin_obj = res;
  return 1;
 }
 return 0;
}
