
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct r_bin_dex_obj_t {int * kv; } ;
struct TYPE_5__ {TYPE_1__* o; } ;
struct TYPE_4__ {scalar_t__ bin_obj; } ;
typedef int Sdb ;
typedef TYPE_1__ RBinObject ;
typedef TYPE_2__ RBinFile ;



__attribute__((used)) static Sdb *get_sdb (RBinFile *bf) {
 RBinObject *o = bf->o;
 if (!o || !o->bin_obj) {
  return ((void*)0);
 }
 struct r_bin_dex_obj_t *bin = (struct r_bin_dex_obj_t *) o->bin_obj;
 return bin->kv;
}
