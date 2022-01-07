
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int statsTuple; TYPE_1__* rel; scalar_t__ isunique; } ;
typedef TYPE_2__ VariableStatData ;
struct TYPE_12__ {scalar_t__ nnumbers; double* numbers; } ;
struct TYPE_11__ {double stanullfrac; } ;
struct TYPE_9__ {double tuples; } ;
typedef int Oid ;
typedef int Node ;
typedef TYPE_3__* Form_pg_statistic ;
typedef TYPE_4__ AttStatsSlot ;


 int ATTSTATSSLOT_NUMBERS ;
 int CLAMP_PROBABILITY (double) ;
 scalar_t__ GETSTRUCT (int ) ;
 scalar_t__ HeapTupleIsValid (int ) ;
 int InvalidOid ;
 int STATISTIC_KIND_MCV ;
 int free_attstatsslot (TYPE_4__*) ;
 scalar_t__ get_attstatsslot (TYPE_4__*,int ,int ,int ,int ) ;
 double get_variable_numdistinct (TYPE_2__*,int*) ;

double
var_eq_non_const(VariableStatData *vardata, Oid operator,
     Node *other,
     bool varonleft, bool negate)
{
 double selec;
 double nullfrac = 0.0;
 bool isdefault;




 if (HeapTupleIsValid(vardata->statsTuple))
 {
  Form_pg_statistic stats;

  stats = (Form_pg_statistic) GETSTRUCT(vardata->statsTuple);
  nullfrac = stats->stanullfrac;
 }
 if (vardata->isunique && vardata->rel && vardata->rel->tuples >= 1.0)
 {
  selec = 1.0 / vardata->rel->tuples;
 }
 else if (HeapTupleIsValid(vardata->statsTuple))
 {
  double ndistinct;
  AttStatsSlot sslot;
  selec = 1.0 - nullfrac;
  ndistinct = get_variable_numdistinct(vardata, &isdefault);
  if (ndistinct > 1)
   selec /= ndistinct;





  if (get_attstatsslot(&sslot, vardata->statsTuple,
        STATISTIC_KIND_MCV, InvalidOid,
        ATTSTATSSLOT_NUMBERS))
  {
   if (sslot.nnumbers > 0 && selec > sslot.numbers[0])
    selec = sslot.numbers[0];
   free_attstatsslot(&sslot);
  }
 }
 else
 {





  selec = 1.0 / get_variable_numdistinct(vardata, &isdefault);
 }


 if (negate)
  selec = 1.0 - selec - nullfrac;


 CLAMP_PROBABILITY(selec);

 return selec;
}
