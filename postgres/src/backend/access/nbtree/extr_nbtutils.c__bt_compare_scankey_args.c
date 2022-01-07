
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {TYPE_2__* indexRelation; } ;
struct TYPE_9__ {scalar_t__* rd_opcintype; int * rd_opfamily; } ;
struct TYPE_8__ {int sk_flags; int sk_strategy; int sk_attno; scalar_t__ sk_subtype; int sk_argument; int sk_collation; int sk_func; } ;
typedef int StrategyNumber ;
typedef TYPE_1__* ScanKey ;
typedef TYPE_2__* Relation ;
typedef int RegProcedure ;
typedef scalar_t__ Oid ;
typedef TYPE_3__* IndexScanDesc ;


 int Assert (int) ;
 int BTCommuteStrategyNumber (int) ;





 int DatumGetBool (int ) ;
 int ERROR ;
 int FunctionCall2Coll (int *,int ,int ,int ) ;
 scalar_t__ InvalidOid ;
 int OidFunctionCall2Coll (int ,int ,int ,int ) ;
 scalar_t__ OidIsValid (scalar_t__) ;
 scalar_t__ RegProcedureIsValid (int ) ;
 int SK_BT_DESC ;
 int SK_BT_NULLS_FIRST ;
 int SK_ISNULL ;
 int SK_SEARCHNOTNULL ;
 int SK_SEARCHNULL ;
 int elog (int ,char*,int) ;
 int get_opcode (scalar_t__) ;
 scalar_t__ get_opfamily_member (int ,scalar_t__,scalar_t__,int) ;

__attribute__((used)) static bool
_bt_compare_scankey_args(IndexScanDesc scan, ScanKey op,
       ScanKey leftarg, ScanKey rightarg,
       bool *result)
{
 Relation rel = scan->indexRelation;
 Oid lefttype,
    righttype,
    optype,
    opcintype,
    cmp_op;
 StrategyNumber strat;





 if ((leftarg->sk_flags | rightarg->sk_flags) & SK_ISNULL)
 {
  bool leftnull,
     rightnull;

  if (leftarg->sk_flags & SK_ISNULL)
  {
   Assert(leftarg->sk_flags & (SK_SEARCHNULL | SK_SEARCHNOTNULL));
   leftnull = 1;
  }
  else
   leftnull = 0;
  if (rightarg->sk_flags & SK_ISNULL)
  {
   Assert(rightarg->sk_flags & (SK_SEARCHNULL | SK_SEARCHNOTNULL));
   rightnull = 1;
  }
  else
   rightnull = 0;






  strat = op->sk_strategy;
  if (op->sk_flags & SK_BT_NULLS_FIRST)
   strat = BTCommuteStrategyNumber(strat);

  switch (strat)
  {
   case 128:
    *result = (leftnull < rightnull);
    break;
   case 129:
    *result = (leftnull <= rightnull);
    break;
   case 132:
    *result = (leftnull == rightnull);
    break;
   case 131:
    *result = (leftnull >= rightnull);
    break;
   case 130:
    *result = (leftnull > rightnull);
    break;
   default:
    elog(ERROR, "unrecognized StrategyNumber: %d", (int) strat);
    *result = 0;
    break;
  }
  return 1;
 }




 Assert(leftarg->sk_attno == rightarg->sk_attno);

 opcintype = rel->rd_opcintype[leftarg->sk_attno - 1];






 lefttype = leftarg->sk_subtype;
 if (lefttype == InvalidOid)
  lefttype = opcintype;
 righttype = rightarg->sk_subtype;
 if (righttype == InvalidOid)
  righttype = opcintype;
 optype = op->sk_subtype;
 if (optype == InvalidOid)
  optype = opcintype;





 if (lefttype == opcintype && righttype == optype)
 {
  *result = DatumGetBool(FunctionCall2Coll(&op->sk_func,
             op->sk_collation,
             leftarg->sk_argument,
             rightarg->sk_argument));
  return 1;
 }
 strat = op->sk_strategy;
 if (op->sk_flags & SK_BT_DESC)
  strat = BTCommuteStrategyNumber(strat);

 cmp_op = get_opfamily_member(rel->rd_opfamily[leftarg->sk_attno - 1],
         lefttype,
         righttype,
         strat);
 if (OidIsValid(cmp_op))
 {
  RegProcedure cmp_proc = get_opcode(cmp_op);

  if (RegProcedureIsValid(cmp_proc))
  {
   *result = DatumGetBool(OidFunctionCall2Coll(cmp_proc,
              op->sk_collation,
              leftarg->sk_argument,
              rightarg->sk_argument));
   return 1;
  }
 }


 *result = 0;
 return 0;
}
