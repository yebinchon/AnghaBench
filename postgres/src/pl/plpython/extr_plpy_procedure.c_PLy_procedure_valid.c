
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int t_self; int t_data; } ;
struct TYPE_5__ {scalar_t__ fn_xmin; int fn_tid; } ;
typedef TYPE_1__ PLyProcedure ;
typedef TYPE_2__* HeapTuple ;


 scalar_t__ HeapTupleHeaderGetRawXmin (int ) ;
 scalar_t__ ItemPointerEquals (int *,int *) ;

__attribute__((used)) static bool
PLy_procedure_valid(PLyProcedure *proc, HeapTuple procTup)
{
 if (proc == ((void*)0))
  return 0;


 if (!(proc->fn_xmin == HeapTupleHeaderGetRawXmin(procTup->t_data) &&
    ItemPointerEquals(&proc->fn_tid, &procTup->t_self)))
  return 0;

 return 1;
}
