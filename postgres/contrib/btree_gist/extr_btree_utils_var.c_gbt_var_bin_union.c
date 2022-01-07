
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ (* f_cmp ) (scalar_t__,scalar_t__,int ,int *) ;} ;
typedef TYPE_1__ gbtree_vinfo ;
struct TYPE_8__ {scalar_t__ lower; scalar_t__ upper; } ;
typedef int Oid ;
typedef TYPE_2__ GBT_VARKEY_R ;
typedef int GBT_VARKEY ;
typedef int FmgrInfo ;
typedef int Datum ;


 scalar_t__ DatumGetPointer (int ) ;
 int PointerGetDatum (int ) ;
 int gbt_var_key_copy (TYPE_2__*) ;
 TYPE_2__ gbt_var_key_readable (int *) ;
 int * gbt_var_leaf2node (int *,TYPE_1__ const*,int *) ;
 scalar_t__ stub1 (scalar_t__,scalar_t__,int ,int *) ;
 scalar_t__ stub2 (scalar_t__,scalar_t__,int ,int *) ;

void
gbt_var_bin_union(Datum *u, GBT_VARKEY *e, Oid collation,
      const gbtree_vinfo *tinfo, FmgrInfo *flinfo)
{
 GBT_VARKEY_R eo = gbt_var_key_readable(e);
 GBT_VARKEY_R nr;

 if (eo.lower == eo.upper)
 {
  GBT_VARKEY *tmp;

  tmp = gbt_var_leaf2node(e, tinfo, flinfo);
  if (tmp != e)
   eo = gbt_var_key_readable(tmp);
 }

 if (DatumGetPointer(*u))
 {
  GBT_VARKEY_R ro = gbt_var_key_readable((GBT_VARKEY *) DatumGetPointer(*u));
  bool update = 0;

  nr.lower = ro.lower;
  nr.upper = ro.upper;

  if (tinfo->f_cmp(ro.lower, eo.lower, collation, flinfo) > 0)
  {
   nr.lower = eo.lower;
   update = 1;
  }

  if (tinfo->f_cmp(ro.upper, eo.upper, collation, flinfo) < 0)
  {
   nr.upper = eo.upper;
   update = 1;
  }

  if (update)
   *u = PointerGetDatum(gbt_var_key_copy(&nr));
 }
 else
 {
  nr.lower = eo.lower;
  nr.upper = eo.upper;
  *u = PointerGetDatum(gbt_var_key_copy(&nr));
 }
}
