
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int TupleTableSlot ;
struct TYPE_3__ {int temp_cxt; int retrieved_attrs; int attinmeta; int rel; } ;
typedef TYPE_1__ PgFdwModifyState ;
typedef int PGresult ;
typedef int HeapTuple ;


 int ExecForceStoreHeapTuple (int ,int *,int) ;
 int PG_CATCH () ;
 int PG_END_TRY () ;
 int PG_RE_THROW () ;
 int PG_TRY () ;
 int PQclear (int *) ;
 int make_tuple_from_result_row (int *,int ,int ,int ,int ,int *,int ) ;

__attribute__((used)) static void
store_returning_result(PgFdwModifyState *fmstate,
        TupleTableSlot *slot, PGresult *res)
{
 PG_TRY();
 {
  HeapTuple newtup;

  newtup = make_tuple_from_result_row(res, 0,
           fmstate->rel,
           fmstate->attinmeta,
           fmstate->retrieved_attrs,
           ((void*)0),
           fmstate->temp_cxt);





  ExecForceStoreHeapTuple(newtup, slot, 1);
 }
 PG_CATCH();
 {
  if (res)
   PQclear(res);
  PG_RE_THROW();
 }
 PG_END_TRY();
}
