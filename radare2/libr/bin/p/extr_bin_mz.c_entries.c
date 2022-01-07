
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* o; } ;
struct TYPE_4__ {int bin_obj; } ;
typedef int RList ;
typedef TYPE_2__ RBinFile ;
typedef int RBinAddr ;


 int free ;
 int * r_bin_mz_get_entrypoint (int ) ;
 int r_list_append (int *,int *) ;
 int * r_list_newf (int ) ;

__attribute__((used)) static RList *entries(RBinFile *bf) {
 RBinAddr *ptr = ((void*)0);
 RList *res = ((void*)0);
 if (!(res = r_list_newf (free))) {
  return ((void*)0);
 }
 ptr = r_bin_mz_get_entrypoint (bf->o->bin_obj);
 if (ptr) {
  r_list_append (res, ptr);
 }
 return res;
}
