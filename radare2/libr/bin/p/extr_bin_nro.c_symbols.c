
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* o; } ;
struct TYPE_6__ {int * methods_list; } ;
struct TYPE_5__ {scalar_t__ bin_obj; } ;
typedef int RList ;
typedef TYPE_2__ RBinNXOObj ;
typedef TYPE_3__ RBinFile ;



__attribute__((used)) static RList *symbols(RBinFile *bf) {
 RBinNXOObj *bin;
 if (!bf || !bf->o || !bf->o->bin_obj) {
  return ((void*)0);
 }
 bin = (RBinNXOObj*) bf->o->bin_obj;
 return bin->methods_list;
}
