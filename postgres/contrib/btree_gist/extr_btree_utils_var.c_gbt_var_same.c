
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ (* f_cmp ) (int ,int ,int ,int *) ;} ;
typedef TYPE_1__ gbtree_vinfo ;
struct TYPE_6__ {int upper; int lower; } ;
typedef int Oid ;
typedef TYPE_2__ GBT_VARKEY_R ;
typedef int GBT_VARKEY ;
typedef int FmgrInfo ;
typedef int Datum ;


 scalar_t__ DatumGetPointer (int ) ;
 TYPE_2__ gbt_var_key_readable (int *) ;
 scalar_t__ stub1 (int ,int ,int ,int *) ;
 scalar_t__ stub2 (int ,int ,int ,int *) ;

bool
gbt_var_same(Datum d1, Datum d2, Oid collation,
    const gbtree_vinfo *tinfo, FmgrInfo *flinfo)
{
 GBT_VARKEY *t1 = (GBT_VARKEY *) DatumGetPointer(d1);
 GBT_VARKEY *t2 = (GBT_VARKEY *) DatumGetPointer(d2);
 GBT_VARKEY_R r1,
    r2;

 r1 = gbt_var_key_readable(t1);
 r2 = gbt_var_key_readable(t2);

 return (tinfo->f_cmp(r1.lower, r2.lower, collation, flinfo) == 0 &&
   tinfo->f_cmp(r1.upper, r2.upper, collation, flinfo) == 0);
}
