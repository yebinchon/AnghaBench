
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * triggerlist; } ;
typedef int List ;
typedef int EventTriggerEvent ;
typedef TYPE_1__ EventTriggerCacheEntry ;


 int BuildEventTriggerCache () ;
 scalar_t__ ETCS_VALID ;
 int EventTriggerCache ;
 scalar_t__ EventTriggerCacheState ;
 int HASH_FIND ;
 int * NIL ;
 TYPE_1__* hash_search (int ,int *,int ,int *) ;

List *
EventCacheLookup(EventTriggerEvent event)
{
 EventTriggerCacheEntry *entry;

 if (EventTriggerCacheState != ETCS_VALID)
  BuildEventTriggerCache();
 entry = hash_search(EventTriggerCache, &event, HASH_FIND, ((void*)0));
 return entry != ((void*)0) ? entry->triggerlist : NIL;
}
