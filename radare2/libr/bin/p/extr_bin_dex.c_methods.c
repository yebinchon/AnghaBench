
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int * methods_list; } ;
struct TYPE_7__ {TYPE_1__* o; } ;
struct TYPE_6__ {scalar_t__ bin_obj; } ;
typedef int RList ;
typedef TYPE_2__ RBinFile ;
typedef TYPE_3__ RBinDexObj ;


 int dex_loadcode (TYPE_2__*) ;
 int r_return_val_if_fail (int,int *) ;

__attribute__((used)) static RList *methods(RBinFile *bf) {
 r_return_val_if_fail (bf && bf->o && bf->o->bin_obj, ((void*)0));
 RBinDexObj *bin = (RBinDexObj*) bf->o->bin_obj;
 if (!bin->methods_list) {
  dex_loadcode (bf);
 }
 return bin->methods_list;
}
