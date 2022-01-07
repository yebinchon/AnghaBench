
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {struct TYPE_8__* next; TYPE_1__* prev; } ;
struct TYPE_7__ {TYPE_3__* pPeriodicAdvise; TYPE_3__* pSingleShotAdvise; } ;
struct TYPE_6__ {TYPE_3__* next; } ;
typedef TYPE_2__ SystemClockImpl ;
typedef TYPE_3__ SystemClockAdviseEntry ;



__attribute__((used)) static void QUARTZ_RemoveAviseEntryFromQueue(SystemClockImpl* This, SystemClockAdviseEntry* pEntry) {
  if (pEntry->prev) pEntry->prev->next = pEntry->next;
  if (pEntry->next) pEntry->next->prev = pEntry->prev;
  if (This->pSingleShotAdvise == pEntry) This->pSingleShotAdvise = pEntry->next;
  if (This->pPeriodicAdvise == pEntry) This->pPeriodicAdvise = pEntry->next;
}
