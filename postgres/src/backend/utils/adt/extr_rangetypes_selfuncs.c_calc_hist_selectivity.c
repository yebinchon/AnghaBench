
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_32__ TYPE_6__ ;
typedef struct TYPE_31__ TYPE_5__ ;
typedef struct TYPE_30__ TYPE_4__ ;
typedef struct TYPE_29__ TYPE_3__ ;
typedef struct TYPE_28__ TYPE_2__ ;
typedef struct TYPE_27__ TYPE_1__ ;


typedef int lslot ;
struct TYPE_29__ {int statsTuple; } ;
typedef TYPE_3__ VariableStatData ;
struct TYPE_28__ {int fn_oid; } ;
struct TYPE_27__ {int fn_oid; } ;
struct TYPE_30__ {TYPE_2__ rng_subdiff_finfo; TYPE_1__ rng_cmp_proc_finfo; } ;
typedef TYPE_4__ TypeCacheEntry ;
struct TYPE_32__ {int nvalues; int * values; } ;
struct TYPE_31__ {int infinite; } ;
typedef int RangeType ;
typedef TYPE_5__ RangeBound ;
typedef int Oid ;
typedef TYPE_6__ AttStatsSlot ;


 int ATTSTATSSLOT_VALUES ;
 int Assert (int) ;
 int const* DatumGetRangeTypeP (int ) ;
 int ERROR ;
 scalar_t__ HeapTupleIsValid (int ) ;
 int InvalidOid ;
 scalar_t__ OidIsValid (int ) ;
 int STATISTIC_KIND_BOUNDS_HISTOGRAM ;
 int STATISTIC_KIND_RANGE_LENGTH_HISTOGRAM ;
 double calc_hist_selectivity_contained (TYPE_4__*,TYPE_5__*,TYPE_5__*,TYPE_5__*,int,int *,int) ;
 double calc_hist_selectivity_contains (TYPE_4__*,TYPE_5__*,TYPE_5__*,TYPE_5__*,int,int *,int) ;
 double calc_hist_selectivity_scalar (TYPE_4__*,TYPE_5__*,TYPE_5__*,int,int) ;
 int elog (int ,char*,...) ;
 int free_attstatsslot (TYPE_6__*) ;
 scalar_t__ get_attstatsslot (TYPE_6__*,int ,int ,int ,int ) ;
 int memset (TYPE_6__*,int ,int) ;
 scalar_t__ palloc (int) ;
 int range_deserialize (TYPE_4__*,int const*,TYPE_5__*,TYPE_5__*,int*) ;
 int statistic_proc_security_check (TYPE_3__*,int ) ;

__attribute__((used)) static double
calc_hist_selectivity(TypeCacheEntry *typcache, VariableStatData *vardata,
       const RangeType *constval, Oid operator)
{
 AttStatsSlot hslot;
 AttStatsSlot lslot;
 int nhist;
 RangeBound *hist_lower;
 RangeBound *hist_upper;
 int i;
 RangeBound const_lower;
 RangeBound const_upper;
 bool empty;
 double hist_selec;


 if (!statistic_proc_security_check(vardata,
            typcache->rng_cmp_proc_finfo.fn_oid))
  return -1;
 if (OidIsValid(typcache->rng_subdiff_finfo.fn_oid) &&
  !statistic_proc_security_check(vardata,
            typcache->rng_subdiff_finfo.fn_oid))
  return -1;


 if (!(HeapTupleIsValid(vardata->statsTuple) &&
    get_attstatsslot(&hslot, vardata->statsTuple,
         STATISTIC_KIND_BOUNDS_HISTOGRAM, InvalidOid,
         ATTSTATSSLOT_VALUES)))
  return -1.0;





 nhist = hslot.nvalues;
 hist_lower = (RangeBound *) palloc(sizeof(RangeBound) * nhist);
 hist_upper = (RangeBound *) palloc(sizeof(RangeBound) * nhist);
 for (i = 0; i < nhist; i++)
 {
  range_deserialize(typcache, DatumGetRangeTypeP(hslot.values[i]),
        &hist_lower[i], &hist_upper[i], &empty);

  if (empty)
   elog(ERROR, "bounds histogram contains an empty range");
 }


 if (operator == 137 ||
  operator == 139)
 {
  if (!(HeapTupleIsValid(vardata->statsTuple) &&
     get_attstatsslot(&lslot, vardata->statsTuple,
          STATISTIC_KIND_RANGE_LENGTH_HISTOGRAM,
          InvalidOid,
          ATTSTATSSLOT_VALUES)))
  {
   free_attstatsslot(&hslot);
   return -1.0;
  }


  if (lslot.nvalues < 2)
  {
   free_attstatsslot(&lslot);
   free_attstatsslot(&hslot);
   return -1.0;
  }
 }
 else
  memset(&lslot, 0, sizeof(lslot));


 range_deserialize(typcache, constval, &const_lower, &const_upper, &empty);
 Assert(!empty);





 switch (operator)
 {
  case 132:
   hist_selec =
    calc_hist_selectivity_scalar(typcache, &const_lower,
            hist_lower, nhist, 0);
   break;

  case 133:
   hist_selec =
    calc_hist_selectivity_scalar(typcache, &const_lower,
            hist_lower, nhist, 1);
   break;

  case 135:
   hist_selec =
    1 - calc_hist_selectivity_scalar(typcache, &const_lower,
             hist_lower, nhist, 0);
   break;

  case 136:
   hist_selec =
    1 - calc_hist_selectivity_scalar(typcache, &const_lower,
             hist_lower, nhist, 1);
   break;

  case 134:

   hist_selec =
    calc_hist_selectivity_scalar(typcache, &const_lower,
            hist_upper, nhist, 0);
   break;

  case 128:

   hist_selec =
    1 - calc_hist_selectivity_scalar(typcache, &const_upper,
             hist_lower, nhist, 1);
   break;

  case 130:

   hist_selec =
    1 - calc_hist_selectivity_scalar(typcache, &const_lower,
             hist_lower, nhist, 0);
   break;

  case 131:

   hist_selec =
    calc_hist_selectivity_scalar(typcache, &const_upper,
            hist_upper, nhist, 1);
   break;

  case 129:
  case 138:
   hist_selec =
    calc_hist_selectivity_scalar(typcache, &const_lower, hist_upper,
            nhist, 0);
   hist_selec +=
    (1.0 - calc_hist_selectivity_scalar(typcache, &const_upper, hist_lower,
             nhist, 1));
   hist_selec = 1.0 - hist_selec;
   break;

  case 137:
   hist_selec =
    calc_hist_selectivity_contains(typcache, &const_lower,
              &const_upper, hist_lower, nhist,
              lslot.values, lslot.nvalues);
   break;

  case 139:
   if (const_lower.infinite)
   {




    hist_selec =
     calc_hist_selectivity_scalar(typcache, &const_upper,
             hist_upper, nhist, 1);
   }
   else if (const_upper.infinite)
   {
    hist_selec =
     1.0 - calc_hist_selectivity_scalar(typcache, &const_lower,
                hist_lower, nhist, 0);
   }
   else
   {
    hist_selec =
     calc_hist_selectivity_contained(typcache, &const_lower,
             &const_upper, hist_lower, nhist,
             lslot.values, lslot.nvalues);
   }
   break;

  default:
   elog(ERROR, "unknown range operator %u", operator);
   hist_selec = -1.0;
   break;
 }

 free_attstatsslot(&lslot);
 free_attstatsslot(&hslot);

 return hist_selec;
}
