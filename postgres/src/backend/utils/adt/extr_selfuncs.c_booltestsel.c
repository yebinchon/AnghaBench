
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int statsTuple; } ;
typedef TYPE_1__ VariableStatData ;
struct TYPE_10__ {scalar_t__ nnumbers; double* numbers; int * values; } ;
struct TYPE_9__ {double stanullfrac; } ;
typedef int SpecialJoinInfo ;
typedef int Selectivity ;
typedef int PlannerInfo ;
typedef int Node ;
typedef int JoinType ;
typedef TYPE_2__* Form_pg_statistic ;
typedef int BoolTestType ;
typedef TYPE_3__ AttStatsSlot ;


 int ATTSTATSSLOT_NUMBERS ;
 int ATTSTATSSLOT_VALUES ;
 int CLAMP_PROBABILITY (double) ;
 double DEFAULT_NOT_UNK_SEL ;
 double DEFAULT_UNK_SEL ;
 scalar_t__ DatumGetBool (int ) ;
 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 scalar_t__ HeapTupleIsValid (int ) ;






 int InvalidOid ;
 int ReleaseVariableStats (TYPE_1__) ;
 int STATISTIC_KIND_MCV ;
 scalar_t__ clause_selectivity (int *,int *,int,int ,int *) ;
 int elog (int ,char*,int) ;
 int examine_variable (int *,int *,int,TYPE_1__*) ;
 int free_attstatsslot (TYPE_3__*) ;
 scalar_t__ get_attstatsslot (TYPE_3__*,int ,int ,int ,int) ;

Selectivity
booltestsel(PlannerInfo *root, BoolTestType booltesttype, Node *arg,
   int varRelid, JoinType jointype, SpecialJoinInfo *sjinfo)
{
 VariableStatData vardata;
 double selec;

 examine_variable(root, arg, varRelid, &vardata);

 if (HeapTupleIsValid(vardata.statsTuple))
 {
  Form_pg_statistic stats;
  double freq_null;
  AttStatsSlot sslot;

  stats = (Form_pg_statistic) GETSTRUCT(vardata.statsTuple);
  freq_null = stats->stanullfrac;

  if (get_attstatsslot(&sslot, vardata.statsTuple,
        STATISTIC_KIND_MCV, InvalidOid,
        ATTSTATSSLOT_VALUES | ATTSTATSSLOT_NUMBERS)
   && sslot.nnumbers > 0)
  {
   double freq_true;
   double freq_false;




   if (DatumGetBool(sslot.values[0]))
    freq_true = sslot.numbers[0];
   else
    freq_true = 1.0 - sslot.numbers[0] - freq_null;





   freq_false = 1.0 - freq_true - freq_null;

   switch (booltesttype)
   {
    case 128:

     selec = freq_null;
     break;
    case 130:

     selec = 1.0 - freq_null;
     break;
    case 129:

     selec = freq_true;
     break;
    case 131:

     selec = 1.0 - freq_true;
     break;
    case 133:

     selec = freq_false;
     break;
    case 132:

     selec = 1.0 - freq_false;
     break;
    default:
     elog(ERROR, "unrecognized booltesttype: %d",
       (int) booltesttype);
     selec = 0.0;
     break;
   }

   free_attstatsslot(&sslot);
  }
  else
  {





   switch (booltesttype)
   {
    case 128:

     selec = freq_null;
     break;
    case 130:

     selec = 1.0 - freq_null;
     break;
    case 129:
    case 133:

     selec = (1.0 - freq_null) / 2.0;
     break;
    case 131:
    case 132:


     selec = (freq_null + 1.0) / 2.0;
     break;
    default:
     elog(ERROR, "unrecognized booltesttype: %d",
       (int) booltesttype);
     selec = 0.0;
     break;
   }
  }
 }
 else
 {






  switch (booltesttype)
  {
   case 128:
    selec = DEFAULT_UNK_SEL;
    break;
   case 130:
    selec = DEFAULT_NOT_UNK_SEL;
    break;
   case 129:
   case 132:
    selec = (double) clause_selectivity(root, arg,
             varRelid,
             jointype, sjinfo);
    break;
   case 133:
   case 131:
    selec = 1.0 - (double) clause_selectivity(root, arg,
                varRelid,
                jointype, sjinfo);
    break;
   default:
    elog(ERROR, "unrecognized booltesttype: %d",
      (int) booltesttype);
    selec = 0.0;
    break;
  }
 }

 ReleaseVariableStats(vardata);


 CLAMP_PROBABILITY(selec);

 return (Selectivity) selec;
}
