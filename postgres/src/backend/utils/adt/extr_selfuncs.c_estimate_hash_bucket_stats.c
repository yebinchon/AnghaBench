
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {TYPE_1__* rel; int statsTuple; } ;
typedef TYPE_2__ VariableStatData ;
struct TYPE_13__ {scalar_t__ nnumbers; double* numbers; } ;
struct TYPE_12__ {double stanullfrac; } ;
struct TYPE_10__ {double tuples; double rows; } ;
typedef double Selectivity ;
typedef int PlannerInfo ;
typedef int Node ;
typedef TYPE_3__* Form_pg_statistic ;
typedef TYPE_4__ AttStatsSlot ;


 int ATTSTATSSLOT_NUMBERS ;
 scalar_t__ GETSTRUCT (int ) ;
 scalar_t__ HeapTupleIsValid (int ) ;
 int InvalidOid ;
 scalar_t__ Max (double,double) ;
 int ReleaseVariableStats (TYPE_2__) ;
 int STATISTIC_KIND_MCV ;
 double clamp_row_est (double) ;
 int examine_variable (int *,int *,int ,TYPE_2__*) ;
 int free_attstatsslot (TYPE_4__*) ;
 scalar_t__ get_attstatsslot (TYPE_4__*,int ,int ,int ,int ) ;
 double get_variable_numdistinct (TYPE_2__*,int*) ;

void
estimate_hash_bucket_stats(PlannerInfo *root, Node *hashkey, double nbuckets,
         Selectivity *mcv_freq,
         Selectivity *bucketsize_frac)
{
 VariableStatData vardata;
 double estfract,
    ndistinct,
    stanullfrac,
    avgfreq;
 bool isdefault;
 AttStatsSlot sslot;

 examine_variable(root, hashkey, 0, &vardata);


 *mcv_freq = 0.0;

 if (HeapTupleIsValid(vardata.statsTuple))
 {
  if (get_attstatsslot(&sslot, vardata.statsTuple,
        STATISTIC_KIND_MCV, InvalidOid,
        ATTSTATSSLOT_NUMBERS))
  {



   if (sslot.nnumbers > 0)
    *mcv_freq = sslot.numbers[0];
   free_attstatsslot(&sslot);
  }
 }


 ndistinct = get_variable_numdistinct(&vardata, &isdefault);





 if (isdefault)
 {
  *bucketsize_frac = (Selectivity) Max(0.1, *mcv_freq);
  ReleaseVariableStats(vardata);
  return;
 }


 if (HeapTupleIsValid(vardata.statsTuple))
 {
  Form_pg_statistic stats;

  stats = (Form_pg_statistic) GETSTRUCT(vardata.statsTuple);
  stanullfrac = stats->stanullfrac;
 }
 else
  stanullfrac = 0.0;


 avgfreq = (1.0 - stanullfrac) / ndistinct;
 if (vardata.rel && vardata.rel->tuples > 0)
 {
  ndistinct *= vardata.rel->rows / vardata.rel->tuples;
  ndistinct = clamp_row_est(ndistinct);
 }






 if (ndistinct > nbuckets)
  estfract = 1.0 / nbuckets;
 else
  estfract = 1.0 / ndistinct;




 if (avgfreq > 0.0 && *mcv_freq > avgfreq)
  estfract *= *mcv_freq / avgfreq;






 if (estfract < 1.0e-6)
  estfract = 1.0e-6;
 else if (estfract > 1.0)
  estfract = 1.0;

 *bucketsize_frac = (Selectivity) estfract;

 ReleaseVariableStats(vardata);
}
