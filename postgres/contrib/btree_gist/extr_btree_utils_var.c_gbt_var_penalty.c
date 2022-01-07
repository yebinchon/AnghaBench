
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef size_t int32 ;
struct TYPE_16__ {scalar_t__ (* f_cmp ) (scalar_t__,scalar_t__,int ,int *) ;} ;
typedef TYPE_3__ gbtree_vinfo ;
struct TYPE_18__ {scalar_t__ lower; scalar_t__ upper; } ;
struct TYPE_17__ {TYPE_2__* rel; int key; } ;
struct TYPE_15__ {TYPE_1__* rd_att; } ;
struct TYPE_14__ {int natts; } ;
typedef int Oid ;
typedef TYPE_4__ GISTENTRY ;
typedef TYPE_5__ GBT_VARKEY_R ;
typedef int GBT_VARKEY ;
typedef int FmgrInfo ;
typedef int Datum ;


 double Abs (unsigned char) ;
 scalar_t__ DatumGetPointer (int ) ;
 int FLT_MAX ;
 scalar_t__ FLT_MIN ;
 int PointerGetDatum (int ) ;
 scalar_t__* VARDATA (scalar_t__) ;
 size_t VARHDRSZ ;
 size_t VARSIZE (scalar_t__) ;
 scalar_t__ gbt_bytea_pf_match (scalar_t__,scalar_t__,TYPE_3__ const*) ;
 int gbt_var_bin_union (int *,int *,int ,TYPE_3__ const*,int *) ;
 TYPE_5__ gbt_var_key_readable (int *) ;
 int * gbt_var_leaf2node (int *,TYPE_3__ const*,int *) ;
 size_t gbt_var_node_cp_len (int *,TYPE_3__ const*) ;
 scalar_t__ stub1 (scalar_t__,scalar_t__,int ,int *) ;
 scalar_t__ stub2 (scalar_t__,scalar_t__,int ,int *) ;

float *
gbt_var_penalty(float *res, const GISTENTRY *o, const GISTENTRY *n,
    Oid collation, const gbtree_vinfo *tinfo, FmgrInfo *flinfo)
{
 GBT_VARKEY *orge = (GBT_VARKEY *) DatumGetPointer(o->key);
 GBT_VARKEY *newe = (GBT_VARKEY *) DatumGetPointer(n->key);
 GBT_VARKEY_R ok,
    nk;

 *res = 0.0;

 nk = gbt_var_key_readable(newe);
 if (nk.lower == nk.upper)
 {
  GBT_VARKEY *tmp;

  tmp = gbt_var_leaf2node(newe, tinfo, flinfo);
  if (tmp != newe)
   nk = gbt_var_key_readable(tmp);
 }
 ok = gbt_var_key_readable(orge);

 if ((VARSIZE(ok.lower) - VARHDRSZ) == 0 && (VARSIZE(ok.upper) - VARHDRSZ) == 0)
  *res = 0.0;
 else if (!((tinfo->f_cmp(nk.lower, ok.lower, collation, flinfo) >= 0 ||
    gbt_bytea_pf_match(ok.lower, nk.lower, tinfo)) &&
      (tinfo->f_cmp(nk.upper, ok.upper, collation, flinfo) <= 0 ||
    gbt_bytea_pf_match(ok.upper, nk.upper, tinfo))))
 {
  Datum d = PointerGetDatum(0);
  double dres;
  int32 ol,
     ul;

  gbt_var_bin_union(&d, orge, collation, tinfo, flinfo);
  ol = gbt_var_node_cp_len((GBT_VARKEY *) DatumGetPointer(d), tinfo);
  gbt_var_bin_union(&d, newe, collation, tinfo, flinfo);
  ul = gbt_var_node_cp_len((GBT_VARKEY *) DatumGetPointer(d), tinfo);

  if (ul < ol)
  {
   dres = (ol - ul);
  }
  else
  {
   GBT_VARKEY_R uk = gbt_var_key_readable((GBT_VARKEY *) DatumGetPointer(d));
   unsigned char tmp[4];

   tmp[0] = (unsigned char) (((VARSIZE(ok.lower) - VARHDRSZ) <= ul) ? 0 : (VARDATA(ok.lower)[ul]));
   tmp[1] = (unsigned char) (((VARSIZE(uk.lower) - VARHDRSZ) <= ul) ? 0 : (VARDATA(uk.lower)[ul]));
   tmp[2] = (unsigned char) (((VARSIZE(ok.upper) - VARHDRSZ) <= ul) ? 0 : (VARDATA(ok.upper)[ul]));
   tmp[3] = (unsigned char) (((VARSIZE(uk.upper) - VARHDRSZ) <= ul) ? 0 : (VARDATA(uk.upper)[ul]));
   dres = Abs(tmp[0] - tmp[1]) + Abs(tmp[3] - tmp[2]);
   dres /= 256.0;
  }

  *res += FLT_MIN;
  *res += (float) (dres / ((double) (ol + 1)));
  *res *= (FLT_MAX / (o->rel->rd_att->natts + 1));
 }

 return res;
}
