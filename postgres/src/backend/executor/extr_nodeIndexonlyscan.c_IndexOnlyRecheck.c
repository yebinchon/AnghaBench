
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TupleTableSlot ;
typedef int IndexOnlyScanState ;


 int ERROR ;
 int elog (int ,char*) ;

__attribute__((used)) static bool
IndexOnlyRecheck(IndexOnlyScanState *node, TupleTableSlot *slot)
{
 elog(ERROR, "EvalPlanQual recheck is not supported in index-only scans");
 return 0;
}
