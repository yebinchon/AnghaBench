
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * (* f_l2n ) (int *,int *) ;} ;
typedef TYPE_1__ gbtree_vinfo ;
typedef int GBT_VARKEY ;
typedef int FmgrInfo ;


 int * stub1 (int *,int *) ;

__attribute__((used)) static GBT_VARKEY *
gbt_var_leaf2node(GBT_VARKEY *leaf, const gbtree_vinfo *tinfo, FmgrInfo *flinfo)
{
 GBT_VARKEY *out = leaf;

 if (tinfo->f_l2n)
  out = tinfo->f_l2n(leaf, flinfo);

 return out;
}
