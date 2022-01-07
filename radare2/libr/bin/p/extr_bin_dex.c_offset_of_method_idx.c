
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut64 ;
struct r_bin_dex_obj_t {int dummy; } ;
typedef int RBinFile ;


 int mdb ;
 int sdb_fmt (char*,int) ;
 int sdb_num_get (int ,int ,int ) ;

__attribute__((used)) static ut64 offset_of_method_idx(RBinFile *bf, struct r_bin_dex_obj_t *dex, int idx) {

 return sdb_num_get (mdb, sdb_fmt ("method.%d", idx), 0);
}
