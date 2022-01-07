
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut64 ;
struct r_bin_mz_obj_t {int kv; } ;
typedef int Sdb ;
typedef int RBuffer ;
typedef int RBinFile ;


 struct r_bin_mz_obj_t* r_bin_mz_new_buf (int *) ;
 int sdb_ns_set (int *,char*,int ) ;

__attribute__((used)) static bool load(RBinFile *bf, void **bin_obj, RBuffer *buf, ut64 loadaddr, Sdb *sdb) {
 struct r_bin_mz_obj_t *mz_obj = r_bin_mz_new_buf (buf);
 if (mz_obj) {
  sdb_ns_set (sdb, "info", mz_obj->kv);
  *bin_obj = mz_obj;
  return 1;
 }
 return 0;
}
