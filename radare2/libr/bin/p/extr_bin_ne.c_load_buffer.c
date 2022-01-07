
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ut64 ;
typedef int r_bin_ne_obj_t ;
struct TYPE_5__ {TYPE_1__* rbin; } ;
struct TYPE_4__ {int verbose; } ;
typedef int Sdb ;
typedef int RBuffer ;
typedef TYPE_2__ RBinFile ;


 int * r_bin_ne_new_buf (int *,int ) ;
 int r_return_val_if_fail (int ,int) ;

__attribute__((used)) static bool load_buffer(RBinFile *bf, void **bin_obj, RBuffer *buf, ut64 loadaddr, Sdb *sdb) {
 r_return_val_if_fail (bf && bin_obj && buf, 0);
 r_bin_ne_obj_t *res = r_bin_ne_new_buf (buf, bf->rbin->verbose);
 if (res) {
  *bin_obj = res;
  return 1;
 }
 return 0;
}
