
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int vartype; int statsTuple; } ;
typedef TYPE_1__ VariableStatData ;
struct TYPE_14__ {int nvalues; int * values; int stacoll; scalar_t__ nnumbers; int staop; } ;
struct TYPE_13__ {int fn_oid; } ;
typedef int PlannerInfo ;
typedef int Oid ;
typedef TYPE_2__ FmgrInfo ;
typedef int Datum ;
typedef TYPE_3__ AttStatsSlot ;


 int ATTSTATSSLOT_NUMBERS ;
 int ATTSTATSSLOT_VALUES ;
 int CLAMP_PROBABILITY (double) ;
 int DatumGetBool (int ) ;
 int FunctionCall2Coll (TYPE_2__*,int ,int ,int ) ;
 scalar_t__ HeapTupleIsValid (int ) ;
 int InvalidOid ;
 int STATISTIC_KIND_HISTOGRAM ;
 int STATISTIC_KIND_MCV ;
 scalar_t__ convert_to_scalar (int ,int ,int ,double*,int ,int ,int ,double*,double*) ;
 int free_attstatsslot (TYPE_3__*) ;
 int get_actual_variable_range (int *,TYPE_1__*,int ,int *,int *) ;
 scalar_t__ get_attstatsslot (TYPE_3__*,int ,int ,int ,int ) ;
 double get_variable_numdistinct (TYPE_1__*,int*) ;
 scalar_t__ isnan (double) ;
 scalar_t__ statistic_proc_security_check (TYPE_1__*,int ) ;

double
ineq_histogram_selectivity(PlannerInfo *root,
         VariableStatData *vardata,
         FmgrInfo *opproc, bool isgt, bool iseq,
         Datum constval, Oid consttype)
{
 double hist_selec;
 AttStatsSlot sslot;

 hist_selec = -1.0;
 if (HeapTupleIsValid(vardata->statsTuple) &&
  statistic_proc_security_check(vardata, opproc->fn_oid) &&
  get_attstatsslot(&sslot, vardata->statsTuple,
       STATISTIC_KIND_HISTOGRAM, InvalidOid,
       ATTSTATSSLOT_VALUES))
 {
  if (sslot.nvalues > 1)
  {
   double histfrac;
   int lobound = 0;
   int hibound = sslot.nvalues;
   bool have_end = 0;







   if (sslot.nvalues == 2)
    have_end = get_actual_variable_range(root,
              vardata,
              sslot.staop,
              &sslot.values[0],
              &sslot.values[1]);

   while (lobound < hibound)
   {
    int probe = (lobound + hibound) / 2;
    bool ltcmp;






    if (probe == 0 && sslot.nvalues > 2)
     have_end = get_actual_variable_range(root,
               vardata,
               sslot.staop,
               &sslot.values[0],
               ((void*)0));
    else if (probe == sslot.nvalues - 1 && sslot.nvalues > 2)
     have_end = get_actual_variable_range(root,
               vardata,
               sslot.staop,
               ((void*)0),
               &sslot.values[probe]);

    ltcmp = DatumGetBool(FunctionCall2Coll(opproc,
                sslot.stacoll,
                sslot.values[probe],
                constval));
    if (isgt)
     ltcmp = !ltcmp;
    if (ltcmp)
     lobound = probe + 1;
    else
     hibound = probe;
   }

   if (lobound <= 0)
   {
    histfrac = 0.0;
   }
   else if (lobound >= sslot.nvalues)
   {



    histfrac = 1.0;
   }
   else
   {

    int i = lobound;
    double eq_selec = 0;
    double val,
       high,
       low;
    double binfrac;
    if (i == 1 || isgt == iseq)
    {
     double otherdistinct;
     bool isdefault;
     AttStatsSlot mcvslot;


     otherdistinct = get_variable_numdistinct(vardata,
                &isdefault);


     if (get_attstatsslot(&mcvslot, vardata->statsTuple,
           STATISTIC_KIND_MCV, InvalidOid,
           ATTSTATSSLOT_NUMBERS))
     {
      otherdistinct -= mcvslot.nnumbers;
      free_attstatsslot(&mcvslot);
     }


     if (otherdistinct > 1)
      eq_selec = 1.0 / otherdistinct;
    }






    if (convert_to_scalar(constval, consttype, sslot.stacoll,
           &val,
           sslot.values[i - 1], sslot.values[i],
           vardata->vartype,
           &low, &high))
    {
     if (high <= low)
     {

      binfrac = 0.5;
     }
     else if (val <= low)
      binfrac = 0.0;
     else if (val >= high)
      binfrac = 1.0;
     else
     {
      binfrac = (val - low) / (high - low);







      if (isnan(binfrac) ||
       binfrac < 0.0 || binfrac > 1.0)
       binfrac = 0.5;
     }
    }
    else
    {
     binfrac = 0.5;
    }






    histfrac = (double) (i - 1) + binfrac;
    histfrac /= (double) (sslot.nvalues - 1);
    if (i == 1)
     histfrac += eq_selec * (1.0 - binfrac);






    if (isgt == iseq)
     histfrac -= eq_selec;
   }





   hist_selec = isgt ? (1.0 - histfrac) : histfrac;
   if (have_end)
    CLAMP_PROBABILITY(hist_selec);
   else
   {
    double cutoff = 0.01 / (double) (sslot.nvalues - 1);

    if (hist_selec < cutoff)
     hist_selec = cutoff;
    else if (hist_selec > 1.0 - cutoff)
     hist_selec = 1.0 - cutoff;
   }
  }

  free_attstatsslot(&sslot);
 }

 return hist_selec;
}
