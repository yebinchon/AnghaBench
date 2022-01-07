
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct r_bin_vsf_obj {int * kv; } ;
struct TYPE_5__ {TYPE_1__* o; } ;
struct TYPE_4__ {scalar_t__ bin_obj; } ;
typedef int Sdb ;
typedef TYPE_2__ RBinFile ;


 int r_return_val_if_fail (int,int *) ;

__attribute__((used)) static Sdb* get_sdb (RBinFile *bf) {
 r_return_val_if_fail (bf && bf->o && bf->o->bin_obj, ((void*)0));
 struct r_bin_vsf_obj* bin = (struct r_bin_vsf_obj*) bf->o->bin_obj;
 return bin->kv;
}
