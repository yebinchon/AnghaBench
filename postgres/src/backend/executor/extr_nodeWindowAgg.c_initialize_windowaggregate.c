
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int WindowStatePerFunc ;
typedef TYPE_1__* WindowStatePerAgg ;
struct TYPE_6__ {scalar_t__ aggcontext; } ;
typedef TYPE_2__ WindowAggState ;
struct TYPE_5__ {scalar_t__ aggcontext; int resultValueIsNull; scalar_t__ resultValue; scalar_t__ transValueCount; scalar_t__ initValueIsNull; scalar_t__ transValueIsNull; int transtypeLen; int transtypeByVal; int initValue; int transValue; } ;
typedef scalar_t__ MemoryContext ;
typedef scalar_t__ Datum ;


 int MemoryContextResetAndDeleteChildren (scalar_t__) ;
 scalar_t__ MemoryContextSwitchTo (scalar_t__) ;
 int datumCopy (int ,int ,int ) ;

__attribute__((used)) static void
initialize_windowaggregate(WindowAggState *winstate,
         WindowStatePerFunc perfuncstate,
         WindowStatePerAgg peraggstate)
{
 MemoryContext oldContext;






 if (peraggstate->aggcontext != winstate->aggcontext)
  MemoryContextResetAndDeleteChildren(peraggstate->aggcontext);

 if (peraggstate->initValueIsNull)
  peraggstate->transValue = peraggstate->initValue;
 else
 {
  oldContext = MemoryContextSwitchTo(peraggstate->aggcontext);
  peraggstate->transValue = datumCopy(peraggstate->initValue,
           peraggstate->transtypeByVal,
           peraggstate->transtypeLen);
  MemoryContextSwitchTo(oldContext);
 }
 peraggstate->transValueIsNull = peraggstate->initValueIsNull;
 peraggstate->transValueCount = 0;
 peraggstate->resultValue = (Datum) 0;
 peraggstate->resultValueIsNull = 1;
}
