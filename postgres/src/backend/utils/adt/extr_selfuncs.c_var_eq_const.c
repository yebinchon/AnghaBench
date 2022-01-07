
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int statsTuple; TYPE_1__* rel; scalar_t__ isunique; } ;
typedef TYPE_2__ VariableStatData ;
struct TYPE_13__ {int nvalues; double* numbers; int nnumbers; int * values; int stacoll; } ;
struct TYPE_12__ {double stanullfrac; } ;
struct TYPE_10__ {double tuples; } ;
typedef int Oid ;
typedef TYPE_3__* Form_pg_statistic ;
typedef int FmgrInfo ;
typedef int Datum ;
typedef TYPE_4__ AttStatsSlot ;


 int ATTSTATSSLOT_NUMBERS ;
 int ATTSTATSSLOT_VALUES ;
 int CLAMP_PROBABILITY (double) ;
 int DatumGetBool (int ) ;
 int FunctionCall2Coll (int *,int ,int ,int ) ;
 scalar_t__ GETSTRUCT (int ) ;
 scalar_t__ HeapTupleIsValid (int ) ;
 int InvalidOid ;
 int STATISTIC_KIND_MCV ;
 int fmgr_info (int ,int *) ;
 int free_attstatsslot (TYPE_4__*) ;
 scalar_t__ get_attstatsslot (TYPE_4__*,int ,int ,int ,int) ;
 int get_opcode (int ) ;
 double get_variable_numdistinct (TYPE_2__*,int*) ;
 scalar_t__ statistic_proc_security_check (TYPE_2__*,int ) ;

double
var_eq_const(VariableStatData *vardata, Oid operator,
    Datum constval, bool constisnull,
    bool varonleft, bool negate)
{
 double selec;
 double nullfrac = 0.0;
 bool isdefault;
 Oid opfuncoid;





 if (constisnull)
  return 0.0;





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
 else if (HeapTupleIsValid(vardata->statsTuple) &&
    statistic_proc_security_check(vardata,
             (opfuncoid = get_opcode(operator))))
 {
  AttStatsSlot sslot;
  bool match = 0;
  int i;
  if (get_attstatsslot(&sslot, vardata->statsTuple,
        STATISTIC_KIND_MCV, InvalidOid,
        ATTSTATSSLOT_VALUES | ATTSTATSSLOT_NUMBERS))
  {
   FmgrInfo eqproc;

   fmgr_info(opfuncoid, &eqproc);

   for (i = 0; i < sslot.nvalues; i++)
   {

    if (varonleft)
     match = DatumGetBool(FunctionCall2Coll(&eqproc,
                 sslot.stacoll,
                 sslot.values[i],
                 constval));
    else
     match = DatumGetBool(FunctionCall2Coll(&eqproc,
                 sslot.stacoll,
                 constval,
                 sslot.values[i]));
    if (match)
     break;
   }
  }
  else
  {

   i = 0;
  }

  if (match)
  {




   selec = sslot.numbers[i];
  }
  else
  {





   double sumcommon = 0.0;
   double otherdistinct;

   for (i = 0; i < sslot.nnumbers; i++)
    sumcommon += sslot.numbers[i];
   selec = 1.0 - sumcommon - nullfrac;
   CLAMP_PROBABILITY(selec);






   otherdistinct = get_variable_numdistinct(vardata, &isdefault) -
    sslot.nnumbers;
   if (otherdistinct > 1)
    selec /= otherdistinct;





   if (sslot.nnumbers > 0 && selec > sslot.numbers[sslot.nnumbers - 1])
    selec = sslot.numbers[sslot.nnumbers - 1];
  }

  free_attstatsslot(&sslot);
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
