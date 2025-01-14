
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct r_bin_bflt_obj {int dummy; } ;
struct TYPE_5__ {TYPE_1__* o; } ;
struct TYPE_4__ {scalar_t__ bin_obj; } ;
typedef int RList ;
typedef TYPE_2__ RBinFile ;
typedef int RBinAddr ;


 int free ;
 int * r_bflt_get_entry (struct r_bin_bflt_obj*) ;
 int r_list_append (int *,int *) ;
 int r_list_free (int *) ;
 int * r_list_newf (int ) ;

__attribute__((used)) static RList *entries(RBinFile *bf) {
 struct r_bin_bflt_obj *obj = (struct r_bin_bflt_obj *) bf->o->bin_obj;
 RList *ret;
 RBinAddr *ptr;

 if (!(ret = r_list_newf (free))) {
  return ((void*)0);
 }
 ptr = r_bflt_get_entry (obj);
 if (!ptr) {
  r_list_free (ret);
  return ((void*)0);
 }
 r_list_append (ret, ptr);
 return ret;
}
