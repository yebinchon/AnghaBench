
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


 int RBinAddr ;
 int R_FREE (int) ;
 int R_NEW0 (int) ;
 int addr ;
 int free ;
 int r_bin_omf_get_entry (int ,int) ;
 int r_list_append (int *,int) ;
 int r_list_free (int *) ;
 int * r_list_newf (int ) ;

__attribute__((used)) static RList *entries(RBinFile *bf) {
 RList *ret;
 RBinAddr *addr;

 if (!(ret = r_list_newf (free))) {
  return ((void*)0);
 }
 if (!(addr = R_NEW0 (RBinAddr))) {
  r_list_free (ret);
  return ((void*)0);
 }
 if (!r_bin_omf_get_entry (bf->o->bin_obj, addr)) {
  R_FREE (addr);
 } else {
  r_list_append (ret, addr);
 }
 return ret;
}
