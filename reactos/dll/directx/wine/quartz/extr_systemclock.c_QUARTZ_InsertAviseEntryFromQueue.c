
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ rtBaseTime; scalar_t__ rtIntervalTime; struct TYPE_4__* prev; struct TYPE_4__* next; } ;
typedef int SystemClockImpl ;
typedef TYPE_1__ SystemClockAdviseEntry ;
typedef scalar_t__ REFERENCE_TIME ;



__attribute__((used)) static void QUARTZ_InsertAviseEntryFromQueue(SystemClockImpl* This, SystemClockAdviseEntry* pEntry, SystemClockAdviseEntry** pQueue) {
  SystemClockAdviseEntry* prev_it = ((void*)0);
  SystemClockAdviseEntry* it = ((void*)0);
  REFERENCE_TIME bornTime = pEntry->rtBaseTime + pEntry->rtIntervalTime;

  for (it = *pQueue; ((void*)0) != it && (it->rtBaseTime + it->rtIntervalTime) < bornTime; it = it->next) {
    prev_it = it;
  }
  if (((void*)0) == prev_it) {
    pEntry->prev = ((void*)0);
    if (((void*)0) != (*pQueue)) pEntry->next = (*pQueue)->next;

    if (((void*)0) != pEntry->next) pEntry->next->prev = pEntry;
    (*pQueue) = pEntry;
  } else {
    pEntry->prev = prev_it;
    pEntry->next = prev_it->next;
    prev_it->next = pEntry;
    if (((void*)0) != pEntry->next) pEntry->next->prev = pEntry;
  }
}
