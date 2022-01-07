
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* indexRelation; } ;
struct TYPE_7__ {scalar_t__* rd_opcintype; int * rd_opfamily; } ;
struct TYPE_6__ {scalar_t__ sk_subtype; int sk_attno; int sk_collation; } ;
typedef int StrategyNumber ;
typedef TYPE_1__* ScanKey ;
typedef TYPE_2__* Relation ;
typedef int RegProcedure ;
typedef scalar_t__ Oid ;
typedef TYPE_3__* IndexScanDesc ;
typedef int FmgrInfo ;
typedef int Datum ;


 int Assert (int) ;
 scalar_t__ DatumGetBool (int ) ;
 int ERROR ;
 int FunctionCall2Coll (int *,int ,int ,int ) ;
 scalar_t__ InvalidOid ;
 int OidIsValid (scalar_t__) ;
 int RegProcedureIsValid (int ) ;
 int elog (int ,char*,scalar_t__,...) ;
 int fmgr_info (int ,int *) ;
 int get_opcode (scalar_t__) ;
 scalar_t__ get_opfamily_member (int ,scalar_t__,scalar_t__,int ) ;

__attribute__((used)) static Datum
_bt_find_extreme_element(IndexScanDesc scan, ScanKey skey,
       StrategyNumber strat,
       Datum *elems, int nelems)
{
 Relation rel = scan->indexRelation;
 Oid elemtype,
    cmp_op;
 RegProcedure cmp_proc;
 FmgrInfo flinfo;
 Datum result;
 int i;






 elemtype = skey->sk_subtype;
 if (elemtype == InvalidOid)
  elemtype = rel->rd_opcintype[skey->sk_attno - 1];
 cmp_op = get_opfamily_member(rel->rd_opfamily[skey->sk_attno - 1],
         elemtype,
         elemtype,
         strat);
 if (!OidIsValid(cmp_op))
  elog(ERROR, "missing operator %d(%u,%u) in opfamily %u",
    strat, elemtype, elemtype,
    rel->rd_opfamily[skey->sk_attno - 1]);
 cmp_proc = get_opcode(cmp_op);
 if (!RegProcedureIsValid(cmp_proc))
  elog(ERROR, "missing oprcode for operator %u", cmp_op);

 fmgr_info(cmp_proc, &flinfo);

 Assert(nelems > 0);
 result = elems[0];
 for (i = 1; i < nelems; i++)
 {
  if (DatumGetBool(FunctionCall2Coll(&flinfo,
             skey->sk_collation,
             elems[i],
             result)))
   result = elems[i];
 }

 return result;
}
