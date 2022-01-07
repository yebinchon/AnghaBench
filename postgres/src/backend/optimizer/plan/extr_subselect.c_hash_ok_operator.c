
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int oprcode; int oprcanhash; } ;
struct TYPE_4__ {scalar_t__ opno; int args; } ;
typedef TYPE_1__ OpExpr ;
typedef scalar_t__ Oid ;
typedef int Node ;
typedef int HeapTuple ;
typedef TYPE_2__* Form_pg_operator ;


 scalar_t__ ARRAY_EQ_OP ;
 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 int OPEROID ;
 int ObjectIdGetDatum (scalar_t__) ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int elog (int ,char*,scalar_t__) ;
 int exprType (int *) ;
 int func_strict (int ) ;
 int * linitial (int ) ;
 int list_length (int ) ;
 int op_hashjoinable (scalar_t__,int ) ;

__attribute__((used)) static bool
hash_ok_operator(OpExpr *expr)
{
 Oid opid = expr->opno;


 if (list_length(expr->args) != 2)
  return 0;
 if (opid == ARRAY_EQ_OP)
 {


  Node *leftarg = linitial(expr->args);

  return op_hashjoinable(opid, exprType(leftarg));
 }
 else
 {

  HeapTuple tup;
  Form_pg_operator optup;

  tup = SearchSysCache1(OPEROID, ObjectIdGetDatum(opid));
  if (!HeapTupleIsValid(tup))
   elog(ERROR, "cache lookup failed for operator %u", opid);
  optup = (Form_pg_operator) GETSTRUCT(tup);
  if (!optup->oprcanhash || !func_strict(optup->oprcode))
  {
   ReleaseSysCache(tup);
   return 0;
  }
  ReleaseSysCache(tup);
  return 1;
 }
}
