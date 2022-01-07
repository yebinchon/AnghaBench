
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TupleTableSlot ;
typedef int PlanState ;


 int ERROR ;
 int elog (int ,char*) ;

__attribute__((used)) static TupleTableSlot *
ExecBitmapIndexScan(PlanState *pstate)
{
 elog(ERROR, "BitmapIndexScan node does not support ExecProcNode call convention");
 return ((void*)0);
}
