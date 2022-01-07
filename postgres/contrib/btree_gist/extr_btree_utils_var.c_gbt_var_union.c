
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int int32 ;
struct TYPE_10__ {scalar_t__ trnc; } ;
typedef TYPE_2__ gbtree_vinfo ;
struct TYPE_11__ {int n; TYPE_1__* vector; } ;
struct TYPE_9__ {int key; } ;
typedef int Oid ;
typedef TYPE_3__ GistEntryVector ;
typedef int GBT_VARKEY_R ;
typedef int GBT_VARKEY ;
typedef int FmgrInfo ;
typedef int Datum ;


 scalar_t__ DatumGetPointer (int ) ;
 int PointerGetDatum (int *) ;
 int gbt_var_bin_union (int *,int *,int ,TYPE_2__ const*,int *) ;
 int * gbt_var_key_copy (int *) ;
 int gbt_var_key_readable (int *) ;
 int gbt_var_node_cp_len (int *,TYPE_2__ const*) ;
 int * gbt_var_node_truncate (int *,int,TYPE_2__ const*) ;

GBT_VARKEY *
gbt_var_union(const GistEntryVector *entryvec, int32 *size, Oid collation,
     const gbtree_vinfo *tinfo, FmgrInfo *flinfo)
{
 int i = 0,
    numranges = entryvec->n;
 GBT_VARKEY *cur;
 Datum out;
 GBT_VARKEY_R rk;

 *size = sizeof(GBT_VARKEY);

 cur = (GBT_VARKEY *) DatumGetPointer(entryvec->vector[0].key);
 rk = gbt_var_key_readable(cur);
 out = PointerGetDatum(gbt_var_key_copy(&rk));

 for (i = 1; i < numranges; i++)
 {
  cur = (GBT_VARKEY *) DatumGetPointer(entryvec->vector[i].key);
  gbt_var_bin_union(&out, cur, collation, tinfo, flinfo);
 }



 if (tinfo->trnc)
 {
  int32 plen;
  GBT_VARKEY *trc = ((void*)0);

  plen = gbt_var_node_cp_len((GBT_VARKEY *) DatumGetPointer(out), tinfo);
  trc = gbt_var_node_truncate((GBT_VARKEY *) DatumGetPointer(out), plen + 1, tinfo);

  out = PointerGetDatum(trc);
 }

 return ((GBT_VARKEY *) DatumGetPointer(out));
}
