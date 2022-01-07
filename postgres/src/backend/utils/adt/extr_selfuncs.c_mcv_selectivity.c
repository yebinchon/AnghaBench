
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int statsTuple; } ;
typedef TYPE_1__ VariableStatData ;
struct TYPE_12__ {int nvalues; scalar_t__* numbers; int * values; int stacoll; } ;
struct TYPE_11__ {int fn_oid; } ;
typedef TYPE_2__ FmgrInfo ;
typedef int Datum ;
typedef TYPE_3__ AttStatsSlot ;


 int ATTSTATSSLOT_NUMBERS ;
 int ATTSTATSSLOT_VALUES ;
 scalar_t__ DatumGetBool (int ) ;
 int FunctionCall2Coll (TYPE_2__*,int ,int ,int ) ;
 scalar_t__ HeapTupleIsValid (int ) ;
 int InvalidOid ;
 int STATISTIC_KIND_MCV ;
 int free_attstatsslot (TYPE_3__*) ;
 scalar_t__ get_attstatsslot (TYPE_3__*,int ,int ,int ,int) ;
 scalar_t__ statistic_proc_security_check (TYPE_1__*,int ) ;

double
mcv_selectivity(VariableStatData *vardata, FmgrInfo *opproc,
    Datum constval, bool varonleft,
    double *sumcommonp)
{
 double mcv_selec,
    sumcommon;
 AttStatsSlot sslot;
 int i;

 mcv_selec = 0.0;
 sumcommon = 0.0;

 if (HeapTupleIsValid(vardata->statsTuple) &&
  statistic_proc_security_check(vardata, opproc->fn_oid) &&
  get_attstatsslot(&sslot, vardata->statsTuple,
       STATISTIC_KIND_MCV, InvalidOid,
       ATTSTATSSLOT_VALUES | ATTSTATSSLOT_NUMBERS))
 {
  for (i = 0; i < sslot.nvalues; i++)
  {
   if (varonleft ?
    DatumGetBool(FunctionCall2Coll(opproc,
              sslot.stacoll,
              sslot.values[i],
              constval)) :
    DatumGetBool(FunctionCall2Coll(opproc,
              sslot.stacoll,
              constval,
              sslot.values[i])))
    mcv_selec += sslot.numbers[i];
   sumcommon += sslot.numbers[i];
  }
  free_attstatsslot(&sslot);
 }

 *sumcommonp = sumcommon;
 return mcv_selec;
}
