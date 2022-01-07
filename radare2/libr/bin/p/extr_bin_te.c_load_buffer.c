
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ut64 ;
struct r_bin_te_obj_t {int kv; } ;
typedef int Sdb ;
typedef int RBuffer ;
typedef int RBinFile ;


 scalar_t__ UT64_MAX ;
 struct r_bin_te_obj_t* r_bin_te_new_buf (int *) ;
 scalar_t__ r_buf_size (int *) ;
 int r_return_val_if_fail (int ,int) ;
 int sdb_ns_set (int *,char*,int ) ;

__attribute__((used)) static bool load_buffer(RBinFile *bf, void **bin_obj, RBuffer *b, ut64 loadaddr, Sdb *sdb) {
 r_return_val_if_fail (bf && bin_obj && b, 0);
 ut64 sz = r_buf_size (b);
 if (sz == 0 || sz == UT64_MAX) {
  return 0;
 }
 struct r_bin_te_obj_t *res = r_bin_te_new_buf (b);
 if (res) {
  sdb_ns_set (sdb, "info", res->kv);
 }
 *bin_obj = res;
 return 1;
}
