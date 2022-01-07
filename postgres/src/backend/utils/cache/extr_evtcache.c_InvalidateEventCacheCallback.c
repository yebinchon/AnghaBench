
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;
typedef int Datum ;


 scalar_t__ ETCS_NEEDS_REBUILD ;
 scalar_t__ ETCS_VALID ;
 int * EventTriggerCache ;
 int EventTriggerCacheContext ;
 scalar_t__ EventTriggerCacheState ;
 int MemoryContextResetAndDeleteChildren (int ) ;

__attribute__((used)) static void
InvalidateEventCacheCallback(Datum arg, int cacheid, uint32 hashvalue)
{





 if (EventTriggerCacheState == ETCS_VALID)
 {
  MemoryContextResetAndDeleteChildren(EventTriggerCacheContext);
  EventTriggerCache = ((void*)0);
 }


 EventTriggerCacheState = ETCS_NEEDS_REBUILD;
}
