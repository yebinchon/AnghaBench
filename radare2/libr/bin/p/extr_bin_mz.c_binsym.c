
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* o; } ;
struct TYPE_4__ {scalar_t__ bin_obj; } ;
typedef TYPE_2__ RBinFile ;
typedef int RBinAddr ;



 int * r_bin_mz_get_main_vaddr (scalar_t__) ;

__attribute__((used)) static RBinAddr *binsym(RBinFile *bf, int type) {
 RBinAddr *mzaddr = ((void*)0);
 if (bf && bf->o && bf->o->bin_obj) {
  switch (type) {
  case 128:
   mzaddr = r_bin_mz_get_main_vaddr (bf->o->bin_obj);
   break;
  }
 }
 return mzaddr;
}
