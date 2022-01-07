
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef double int64 ;
struct TYPE_4__ {int number_of_rows; int sort_done; int sortstate; TYPE_1__* qstate; } ;
struct TYPE_3__ {scalar_t__ sortColType; } ;
typedef scalar_t__ Oid ;
typedef TYPE_2__ OSAPerGroupState ;
typedef int (* LerpFunc ) (int ,int ,double) ;
typedef int FunctionCallInfo ;
typedef int Datum ;


 scalar_t__ AGG_CONTEXT_AGGREGATE ;
 scalar_t__ AggCheckCallContext (int ,int *) ;
 int Assert (int) ;
 int ERRCODE_NUMERIC_VALUE_OUT_OF_RANGE ;
 int ERROR ;
 scalar_t__ PG_ARGISNULL (int) ;
 double PG_GETARG_FLOAT8 (int) ;
 scalar_t__ PG_GETARG_POINTER (int ) ;
 int PG_RETURN_DATUM (int ) ;
 int PG_RETURN_NULL () ;
 double ceil (double) ;
 int elog (int ,char*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,double) ;
 double floor (double) ;
 scalar_t__ isnan (double) ;
 int tuplesort_getdatum (int ,int,int *,int*,int *) ;
 int tuplesort_performsort (int ) ;
 int tuplesort_rescan (int ) ;
 int tuplesort_skiptuples (int ,double,int) ;

__attribute__((used)) static Datum
percentile_cont_final_common(FunctionCallInfo fcinfo,
        Oid expect_type,
        LerpFunc lerpfunc)
{
 OSAPerGroupState *osastate;
 double percentile;
 int64 first_row = 0;
 int64 second_row = 0;
 Datum val;
 Datum first_val;
 Datum second_val;
 double proportion;
 bool isnull;

 Assert(AggCheckCallContext(fcinfo, ((void*)0)) == AGG_CONTEXT_AGGREGATE);


 if (PG_ARGISNULL(1))
  PG_RETURN_NULL();

 percentile = PG_GETARG_FLOAT8(1);

 if (percentile < 0 || percentile > 1 || isnan(percentile))
  ereport(ERROR,
    (errcode(ERRCODE_NUMERIC_VALUE_OUT_OF_RANGE),
     errmsg("percentile value %g is not between 0 and 1",
      percentile)));


 if (PG_ARGISNULL(0))
  PG_RETURN_NULL();

 osastate = (OSAPerGroupState *) PG_GETARG_POINTER(0);


 if (osastate->number_of_rows == 0)
  PG_RETURN_NULL();

 Assert(expect_type == osastate->qstate->sortColType);


 if (!osastate->sort_done)
 {
  tuplesort_performsort(osastate->sortstate);
  osastate->sort_done = 1;
 }
 else
  tuplesort_rescan(osastate->sortstate);

 first_row = floor(percentile * (osastate->number_of_rows - 1));
 second_row = ceil(percentile * (osastate->number_of_rows - 1));

 Assert(first_row < osastate->number_of_rows);

 if (!tuplesort_skiptuples(osastate->sortstate, first_row, 1))
  elog(ERROR, "missing row in percentile_cont");

 if (!tuplesort_getdatum(osastate->sortstate, 1, &first_val, &isnull, ((void*)0)))
  elog(ERROR, "missing row in percentile_cont");
 if (isnull)
  PG_RETURN_NULL();

 if (first_row == second_row)
 {
  val = first_val;
 }
 else
 {
  if (!tuplesort_getdatum(osastate->sortstate, 1, &second_val, &isnull, ((void*)0)))
   elog(ERROR, "missing row in percentile_cont");

  if (isnull)
   PG_RETURN_NULL();

  proportion = (percentile * (osastate->number_of_rows - 1)) - first_row;
  val = lerpfunc(first_val, second_val, proportion);
 }

 PG_RETURN_DATUM(val);
}
