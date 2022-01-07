
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* qstate; int * sortstate; } ;
struct TYPE_3__ {scalar_t__ tupslot; } ;
typedef TYPE_2__ OSAPerGroupState ;
typedef int Datum ;


 scalar_t__ DatumGetPointer (int ) ;
 int ExecClearTuple (scalar_t__) ;
 int tuplesort_end (int *) ;

__attribute__((used)) static void
ordered_set_shutdown(Datum arg)
{
 OSAPerGroupState *osastate = (OSAPerGroupState *) DatumGetPointer(arg);


 if (osastate->sortstate)
  tuplesort_end(osastate->sortstate);
 osastate->sortstate = ((void*)0);

 if (osastate->qstate->tupslot)
  ExecClearTuple(osastate->qstate->tupslot);
}
