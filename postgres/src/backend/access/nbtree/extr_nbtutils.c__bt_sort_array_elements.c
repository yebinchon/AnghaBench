
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int reverse; int collation; int flinfo; } ;
struct TYPE_10__ {TYPE_2__* indexRelation; } ;
struct TYPE_9__ {scalar_t__* rd_opcintype; int * rd_opfamily; } ;
struct TYPE_8__ {scalar_t__ sk_subtype; int sk_attno; int sk_collation; } ;
typedef TYPE_1__* ScanKey ;
typedef TYPE_2__* Relation ;
typedef int RegProcedure ;
typedef scalar_t__ Oid ;
typedef TYPE_3__* IndexScanDesc ;
typedef int Datum ;
typedef TYPE_4__ BTSortArrayContext ;


 int BTORDER_PROC ;
 int ERROR ;
 scalar_t__ InvalidOid ;
 int RegProcedureIsValid (int ) ;
 int _bt_compare_array_elements ;
 int elog (int ,char*,int ,scalar_t__,scalar_t__,int ) ;
 int fmgr_info (int ,int *) ;
 int get_opfamily_proc (int ,scalar_t__,scalar_t__,int ) ;
 int qsort_arg (void*,int,int,int ,void*) ;
 int qunique_arg (int *,int,int,int ,TYPE_4__*) ;

__attribute__((used)) static int
_bt_sort_array_elements(IndexScanDesc scan, ScanKey skey,
      bool reverse,
      Datum *elems, int nelems)
{
 Relation rel = scan->indexRelation;
 Oid elemtype;
 RegProcedure cmp_proc;
 BTSortArrayContext cxt;

 if (nelems <= 1)
  return nelems;






 elemtype = skey->sk_subtype;
 if (elemtype == InvalidOid)
  elemtype = rel->rd_opcintype[skey->sk_attno - 1];
 cmp_proc = get_opfamily_proc(rel->rd_opfamily[skey->sk_attno - 1],
         elemtype,
         elemtype,
         BTORDER_PROC);
 if (!RegProcedureIsValid(cmp_proc))
  elog(ERROR, "missing support function %d(%u,%u) in opfamily %u",
    BTORDER_PROC, elemtype, elemtype,
    rel->rd_opfamily[skey->sk_attno - 1]);


 fmgr_info(cmp_proc, &cxt.flinfo);
 cxt.collation = skey->sk_collation;
 cxt.reverse = reverse;
 qsort_arg((void *) elems, nelems, sizeof(Datum),
     _bt_compare_array_elements, (void *) &cxt);


 return qunique_arg(elems, nelems, sizeof(Datum),
        _bt_compare_array_elements, &cxt);
}
