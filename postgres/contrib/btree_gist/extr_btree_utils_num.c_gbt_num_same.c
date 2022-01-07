
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t size; scalar_t__ (* f_eq ) (int const*,int const*,int *) ;} ;
typedef TYPE_1__ gbtree_ninfo ;
struct TYPE_5__ {int const* upper; int const* lower; } ;
typedef TYPE_2__ GBT_NUMKEY_R ;
typedef int GBT_NUMKEY ;
typedef int FmgrInfo ;


 scalar_t__ stub1 (int const*,int const*,int *) ;
 scalar_t__ stub2 (int const*,int const*,int *) ;

bool
gbt_num_same(const GBT_NUMKEY *a, const GBT_NUMKEY *b, const gbtree_ninfo *tinfo, FmgrInfo *flinfo)
{
 GBT_NUMKEY_R b1,
    b2;

 b1.lower = &(a[0]);
 b1.upper = &(a[tinfo->size]);
 b2.lower = &(b[0]);
 b2.upper = &(b[tinfo->size]);

 return (tinfo->f_eq(b1.lower, b2.lower, flinfo) &&
   tinfo->f_eq(b1.upper, b2.upper, flinfo));
}
