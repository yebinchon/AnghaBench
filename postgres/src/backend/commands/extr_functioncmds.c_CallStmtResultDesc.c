
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int TupleDesc ;
struct TYPE_5__ {TYPE_1__* funcexpr; } ;
struct TYPE_4__ {int funcid; } ;
typedef int HeapTuple ;
typedef TYPE_1__ FuncExpr ;
typedef TYPE_2__ CallStmt ;


 int ERROR ;
 int HeapTupleIsValid (int ) ;
 int ObjectIdGetDatum (int ) ;
 int PROCOID ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int build_function_result_tupdesc_t (int ) ;
 int elog (int ,char*,int ) ;

TupleDesc
CallStmtResultDesc(CallStmt *stmt)
{
 FuncExpr *fexpr;
 HeapTuple tuple;
 TupleDesc tupdesc;

 fexpr = stmt->funcexpr;

 tuple = SearchSysCache1(PROCOID, ObjectIdGetDatum(fexpr->funcid));
 if (!HeapTupleIsValid(tuple))
  elog(ERROR, "cache lookup failed for procedure %u", fexpr->funcid);

 tupdesc = build_function_result_tupdesc_t(tuple);

 ReleaseSysCache(tuple);

 return tupdesc;
}
