
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * comparator; } ;
typedef TYPE_1__* SortSupport ;
typedef int Oid ;


 int BTORDER_PROC ;
 int BTSORTSUPPORT_PROC ;
 int ERROR ;
 int OidFunctionCall1 (int ,int ) ;
 scalar_t__ OidIsValid (int ) ;
 int PointerGetDatum (TYPE_1__*) ;
 int PrepareSortSupportComparisonShim (int ,TYPE_1__*) ;
 int elog (int ,char*,int ,int ,int ,int ) ;
 int get_opfamily_proc (int ,int ,int ,int ) ;

__attribute__((used)) static void
FinishSortSupportFunction(Oid opfamily, Oid opcintype, SortSupport ssup)
{
 Oid sortSupportFunction;


 sortSupportFunction = get_opfamily_proc(opfamily, opcintype, opcintype,
           BTSORTSUPPORT_PROC);
 if (OidIsValid(sortSupportFunction))
 {




  OidFunctionCall1(sortSupportFunction, PointerGetDatum(ssup));
 }

 if (ssup->comparator == ((void*)0))
 {
  Oid sortFunction;

  sortFunction = get_opfamily_proc(opfamily, opcintype, opcintype,
           BTORDER_PROC);

  if (!OidIsValid(sortFunction))
   elog(ERROR, "missing support function %d(%u,%u) in opfamily %u",
     BTORDER_PROC, opcintype, opcintype, opfamily);


  PrepareSortSupportComparisonShim(sortFunction, ssup);
 }
}
