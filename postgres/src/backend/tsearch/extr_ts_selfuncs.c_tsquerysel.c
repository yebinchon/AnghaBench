
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int statsTuple; } ;
typedef TYPE_1__ VariableStatData ;
struct TYPE_14__ {int nnumbers; int numbers; int nvalues; int values; } ;
struct TYPE_13__ {double stanullfrac; } ;
struct TYPE_12__ {scalar_t__ size; } ;
typedef TYPE_2__* TSQuery ;
typedef double Selectivity ;
typedef TYPE_3__* Form_pg_statistic ;
typedef int Datum ;
typedef TYPE_4__ AttStatsSlot ;


 int ATTSTATSSLOT_NUMBERS ;
 int ATTSTATSSLOT_VALUES ;
 TYPE_2__* DatumGetTSQuery (int ) ;
 scalar_t__ GETSTRUCT (int ) ;
 scalar_t__ HeapTupleIsValid (int ) ;
 int InvalidOid ;
 int STATISTIC_KIND_MCELEM ;
 int free_attstatsslot (TYPE_4__*) ;
 scalar_t__ get_attstatsslot (TYPE_4__*,int ,int ,int ,int) ;
 double mcelem_tsquery_selec (TYPE_2__*,int ,int ,int ,int ) ;
 double tsquery_opr_selec_no_stats (TYPE_2__*) ;

__attribute__((used)) static Selectivity
tsquerysel(VariableStatData *vardata, Datum constval)
{
 Selectivity selec;
 TSQuery query;


 query = DatumGetTSQuery(constval);


 if (query->size == 0)
  return (Selectivity) 0.0;

 if (HeapTupleIsValid(vardata->statsTuple))
 {
  Form_pg_statistic stats;
  AttStatsSlot sslot;

  stats = (Form_pg_statistic) GETSTRUCT(vardata->statsTuple);


  if (get_attstatsslot(&sslot, vardata->statsTuple,
        STATISTIC_KIND_MCELEM, InvalidOid,
        ATTSTATSSLOT_VALUES | ATTSTATSSLOT_NUMBERS))
  {




   selec = mcelem_tsquery_selec(query, sslot.values, sslot.nvalues,
           sslot.numbers, sslot.nnumbers);
   free_attstatsslot(&sslot);
  }
  else
  {

   selec = tsquery_opr_selec_no_stats(query);
  }




  selec *= (1.0 - stats->stanullfrac);
 }
 else
 {

  selec = tsquery_opr_selec_no_stats(query);

 }

 return selec;
}
