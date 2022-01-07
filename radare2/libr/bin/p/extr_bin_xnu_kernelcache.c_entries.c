
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ ut64 ;
struct TYPE_10__ {scalar_t__ entry; } ;
struct TYPE_9__ {TYPE_2__* o; } ;
struct TYPE_8__ {scalar_t__ bin_obj; } ;
struct TYPE_7__ {scalar_t__ pa2va_exec; TYPE_5__* mach0; } ;
typedef int RList ;
typedef TYPE_1__ RKernelCacheObj ;
typedef TYPE_2__ RBinObject ;
typedef TYPE_3__ RBinFile ;
typedef int RBinAddr ;


 int R_K_CONSTRUCTOR_TO_ENTRY ;
 int free ;
 int * newEntry (scalar_t__,scalar_t__,int ) ;
 int process_constructors (TYPE_1__*,TYPE_5__*,int *,int ,int,int ,int *) ;
 int r_list_append (int *,int *) ;
 int * r_list_newf (int ) ;

__attribute__((used)) static RList *entries(RBinFile *bf) {
 RList *ret;
 RBinObject *obj = bf ? bf->o : ((void*)0);

 if (!obj || !obj->bin_obj || !(ret = r_list_newf (free))) {
  return ((void*)0);
 }

 RKernelCacheObj *kobj = (RKernelCacheObj*) obj->bin_obj;
 ut64 entry_vaddr = kobj->mach0->entry;
 if (kobj->pa2va_exec <= entry_vaddr) {
  ut64 entry_paddr = entry_vaddr - kobj->pa2va_exec;
  RBinAddr *ba = newEntry (entry_paddr, entry_vaddr, 0);
  if (ba) {
   r_list_append (ret, ba);
  }
 }

 process_constructors (kobj, kobj->mach0, ret, 0, 1, R_K_CONSTRUCTOR_TO_ENTRY, ((void*)0));

 return ret;
}
