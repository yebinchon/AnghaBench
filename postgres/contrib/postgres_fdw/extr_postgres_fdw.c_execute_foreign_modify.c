
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int TupleTableSlot ;
struct TYPE_8__ {int temp_cxt; scalar_t__ has_returning; int query; int conn; int p_nums; int p_name; int ctidAttno; } ;
struct TYPE_7__ {scalar_t__ ri_FdwState; } ;
typedef TYPE_1__ ResultRelInfo ;
typedef TYPE_2__ PgFdwModifyState ;
typedef int PGresult ;
typedef int * ItemPointer ;
typedef int EState ;
typedef int Datum ;
typedef scalar_t__ CmdType ;


 int Assert (int) ;
 scalar_t__ CMD_DELETE ;
 scalar_t__ CMD_INSERT ;
 scalar_t__ CMD_UPDATE ;
 scalar_t__ DatumGetPointer (int ) ;
 int ERROR ;
 int ExecGetJunkAttribute (int *,int ,int*) ;
 int MemoryContextReset (int ) ;
 scalar_t__ PGRES_COMMAND_OK ;
 scalar_t__ PGRES_TUPLES_OK ;
 int PQclear (int *) ;
 int PQcmdTuples (int *) ;
 int PQntuples (int *) ;
 scalar_t__ PQresultStatus (int *) ;
 int PQsendQueryPrepared (int ,int ,int ,char const**,int *,int *,int ) ;
 int atoi (int ) ;
 char** convert_prep_stmt_params (TYPE_2__*,int *,int *) ;
 int elog (int ,char*) ;
 int * pgfdw_get_result (int ,int ) ;
 int pgfdw_report_error (int ,int *,int ,int,int ) ;
 int prepare_foreign_modify (TYPE_2__*) ;
 int store_returning_result (TYPE_2__*,int *,int *) ;

__attribute__((used)) static TupleTableSlot *
execute_foreign_modify(EState *estate,
        ResultRelInfo *resultRelInfo,
        CmdType operation,
        TupleTableSlot *slot,
        TupleTableSlot *planSlot)
{
 PgFdwModifyState *fmstate = (PgFdwModifyState *) resultRelInfo->ri_FdwState;
 ItemPointer ctid = ((void*)0);
 const char **p_values;
 PGresult *res;
 int n_rows;


 Assert(operation == CMD_INSERT ||
     operation == CMD_UPDATE ||
     operation == CMD_DELETE);


 if (!fmstate->p_name)
  prepare_foreign_modify(fmstate);




 if (operation == CMD_UPDATE || operation == CMD_DELETE)
 {
  Datum datum;
  bool isNull;

  datum = ExecGetJunkAttribute(planSlot,
          fmstate->ctidAttno,
          &isNull);

  if (isNull)
   elog(ERROR, "ctid is NULL");
  ctid = (ItemPointer) DatumGetPointer(datum);
 }


 p_values = convert_prep_stmt_params(fmstate, ctid, slot);




 if (!PQsendQueryPrepared(fmstate->conn,
        fmstate->p_name,
        fmstate->p_nums,
        p_values,
        ((void*)0),
        ((void*)0),
        0))
  pgfdw_report_error(ERROR, ((void*)0), fmstate->conn, 0, fmstate->query);







 res = pgfdw_get_result(fmstate->conn, fmstate->query);
 if (PQresultStatus(res) !=
  (fmstate->has_returning ? PGRES_TUPLES_OK : PGRES_COMMAND_OK))
  pgfdw_report_error(ERROR, res, fmstate->conn, 1, fmstate->query);


 if (fmstate->has_returning)
 {
  n_rows = PQntuples(res);
  if (n_rows > 0)
   store_returning_result(fmstate, slot, res);
 }
 else
  n_rows = atoi(PQcmdTuples(res));


 PQclear(res);

 MemoryContextReset(fmstate->temp_cxt);




 return (n_rows > 0) ? slot : ((void*)0);
}
