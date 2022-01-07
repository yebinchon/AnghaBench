
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int hslot ;
struct TYPE_13__ {int statsTuple; } ;
typedef TYPE_1__ VariableStatData ;
struct TYPE_16__ {int fn_oid; } ;
struct TYPE_14__ {TYPE_4__ cmp_proc_finfo; } ;
typedef TYPE_2__ TypeCacheEntry ;
struct TYPE_17__ {int nnumbers; int * numbers; int nvalues; int * values; } ;
struct TYPE_15__ {double stanullfrac; } ;
typedef double Selectivity ;
typedef int Oid ;
typedef TYPE_3__* Form_pg_statistic ;
typedef TYPE_4__ FmgrInfo ;
typedef scalar_t__ Datum ;
typedef TYPE_5__ AttStatsSlot ;
typedef int ArrayType ;


 int ATTSTATSSLOT_NUMBERS ;
 int ATTSTATSSLOT_VALUES ;
 double DEFAULT_SEL (int ) ;
 int * DatumGetArrayTypeP (scalar_t__) ;
 scalar_t__ GETSTRUCT (int ) ;
 scalar_t__ HeapTupleIsValid (int ) ;
 int InvalidOid ;
 int OID_ARRAY_CONTAINED_OP ;
 int OidIsValid (int ) ;
 scalar_t__ PointerGetDatum (int *) ;
 int STATISTIC_KIND_DECHIST ;
 int STATISTIC_KIND_MCELEM ;
 int TYPECACHE_CMP_PROC_FINFO ;
 int free_attstatsslot (TYPE_5__*) ;
 scalar_t__ get_attstatsslot (TYPE_5__*,int ,int ,int ,int) ;
 TYPE_2__* lookup_type_cache (int ,int ) ;
 double mcelem_array_selec (int *,TYPE_2__*,int *,int ,int *,int ,int *,int ,int ) ;
 int memset (TYPE_5__*,int ,int) ;
 int pfree (int *) ;
 scalar_t__ statistic_proc_security_check (TYPE_1__*,int ) ;

__attribute__((used)) static Selectivity
calc_arraycontsel(VariableStatData *vardata, Datum constval,
      Oid elemtype, Oid operator)
{
 Selectivity selec;
 TypeCacheEntry *typentry;
 FmgrInfo *cmpfunc;
 ArrayType *array;


 typentry = lookup_type_cache(elemtype, TYPECACHE_CMP_PROC_FINFO);
 if (!OidIsValid(typentry->cmp_proc_finfo.fn_oid))
  return DEFAULT_SEL(operator);
 cmpfunc = &typentry->cmp_proc_finfo;





 array = DatumGetArrayTypeP(constval);

 if (HeapTupleIsValid(vardata->statsTuple) &&
  statistic_proc_security_check(vardata, cmpfunc->fn_oid))
 {
  Form_pg_statistic stats;
  AttStatsSlot sslot;
  AttStatsSlot hslot;

  stats = (Form_pg_statistic) GETSTRUCT(vardata->statsTuple);


  if (get_attstatsslot(&sslot, vardata->statsTuple,
        STATISTIC_KIND_MCELEM, InvalidOid,
        ATTSTATSSLOT_VALUES | ATTSTATSSLOT_NUMBERS))
  {




   if (operator != OID_ARRAY_CONTAINED_OP ||
    !get_attstatsslot(&hslot, vardata->statsTuple,
          STATISTIC_KIND_DECHIST, InvalidOid,
          ATTSTATSSLOT_NUMBERS))
    memset(&hslot, 0, sizeof(hslot));


   selec = mcelem_array_selec(array, typentry,
            sslot.values, sslot.nvalues,
            sslot.numbers, sslot.nnumbers,
            hslot.numbers, hslot.nnumbers,
            operator);

   free_attstatsslot(&hslot);
   free_attstatsslot(&sslot);
  }
  else
  {

   selec = mcelem_array_selec(array, typentry,
            ((void*)0), 0, ((void*)0), 0, ((void*)0), 0,
            operator);
  }




  selec *= (1.0 - stats->stanullfrac);
 }
 else
 {

  selec = mcelem_array_selec(array, typentry,
           ((void*)0), 0, ((void*)0), 0, ((void*)0), 0,
           operator);

 }


 if (PointerGetDatum(array) != constval)
  pfree(array);

 return selec;
}
