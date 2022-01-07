
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int * imports_list; } ;
struct TYPE_7__ {TYPE_1__* o; } ;
struct TYPE_6__ {scalar_t__ bin_obj; } ;
typedef int RList ;
typedef TYPE_2__ RBinFile ;
typedef TYPE_3__ RBinDexObj ;


 int dex_loadcode (TYPE_2__*) ;

__attribute__((used)) static RList* imports(RBinFile *bf) {
 RBinDexObj *bin = (RBinDexObj*) bf->o->bin_obj;
 if (!bin) {
  return ((void*)0);
 }
 if (bin && bin->imports_list) {
  return bin->imports_list;
 }
 dex_loadcode (bf);
 return bin->imports_list;
}
