
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef double float4 ;
struct TYPE_8__ {int statsTuple; } ;
typedef TYPE_1__ VariableStatData ;
typedef int TypeCacheEntry ;
struct TYPE_10__ {int nnumbers; double* numbers; } ;
struct TYPE_9__ {double stanullfrac; } ;
typedef int RangeType ;
typedef int Oid ;
typedef TYPE_2__* Form_pg_statistic ;
typedef TYPE_3__ AttStatsSlot ;


 int ATTSTATSSLOT_NUMBERS ;
 int CLAMP_PROBABILITY (double) ;
 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 scalar_t__ HeapTupleIsValid (int ) ;
 int InvalidOid ;
 scalar_t__ RangeIsEmpty (int const*) ;
 int STATISTIC_KIND_RANGE_LENGTH_HISTOGRAM ;
 double calc_hist_selectivity (int *,TYPE_1__*,int const*,int) ;
 double default_range_selectivity (int) ;
 int elog (int ,char*,...) ;
 int free_attstatsslot (TYPE_3__*) ;
 scalar_t__ get_attstatsslot (TYPE_3__*,int ,int ,int ,int ) ;

__attribute__((used)) static double
calc_rangesel(TypeCacheEntry *typcache, VariableStatData *vardata,
     const RangeType *constval, Oid operator)
{
 double hist_selec;
 double selec;
 float4 empty_frac,
    null_frac;




 if (HeapTupleIsValid(vardata->statsTuple))
 {
  Form_pg_statistic stats;
  AttStatsSlot sslot;

  stats = (Form_pg_statistic) GETSTRUCT(vardata->statsTuple);
  null_frac = stats->stanullfrac;


  if (get_attstatsslot(&sslot, vardata->statsTuple,
        STATISTIC_KIND_RANGE_LENGTH_HISTOGRAM,
        InvalidOid,
        ATTSTATSSLOT_NUMBERS))
  {
   if (sslot.nnumbers != 1)
    elog(ERROR, "invalid empty fraction statistic");
   empty_frac = sslot.numbers[0];
   free_attstatsslot(&sslot);
  }
  else
  {

   empty_frac = 0.0;
  }
 }
 else
 {






  null_frac = 0.0;
  empty_frac = 0.0;
 }

 if (RangeIsEmpty(constval))
 {




  switch (operator)
  {

   case 129:
   case 131:
   case 130:
   case 134:
   case 128:

   case 132:
    selec = 0.0;
    break;


   case 139:

   case 133:
    selec = empty_frac;
    break;


   case 137:

   case 136:
    selec = 1.0;
    break;


   case 135:
    selec = 1.0 - empty_frac;
    break;


   case 138:
   default:
    elog(ERROR, "unexpected operator %u", operator);
    selec = 0.0;
    break;
  }
 }
 else
 {
  hist_selec = calc_hist_selectivity(typcache, vardata, constval,
             operator);
  if (hist_selec < 0.0)
   hist_selec = default_range_selectivity(operator);






  if (operator == 139)
  {

   selec = (1.0 - empty_frac) * hist_selec + empty_frac;
  }
  else
  {

   selec = (1.0 - empty_frac) * hist_selec;
  }
 }


 selec *= (1.0 - null_frac);


 CLAMP_PROBABILITY(selec);

 return selec;
}
