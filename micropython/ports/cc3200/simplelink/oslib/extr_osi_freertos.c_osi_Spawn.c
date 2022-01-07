
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* pValue; int pEntry; } ;
typedef TYPE_1__ tSimpleLinkSpawnMsg ;
typedef int P_OSI_SPAWN_ENTRY ;
typedef int OsiReturnVal_e ;


 int OSI_OK ;
 int OSI_OPERATION_FAILED ;
 scalar_t__ pdFALSE ;
 scalar_t__ pdTRUE ;
 int taskYIELD () ;
 scalar_t__ xHigherPriorityTaskWoken ;
 scalar_t__ xQueueSendFromISR (int ,TYPE_1__*,scalar_t__*) ;
 int xSimpleLinkSpawnQueue ;

OsiReturnVal_e osi_Spawn(P_OSI_SPAWN_ENTRY pEntry , void* pValue , unsigned long flags)
{

 tSimpleLinkSpawnMsg Msg;
 Msg.pEntry = pEntry;
 Msg.pValue = pValue;
 xHigherPriorityTaskWoken = pdFALSE;

 if(pdTRUE == xQueueSendFromISR( xSimpleLinkSpawnQueue, &Msg, &xHigherPriorityTaskWoken ))
 {
  if( xHigherPriorityTaskWoken )
  {
   taskYIELD ();
  }
  return OSI_OK;
 }
 return OSI_OPERATION_FAILED;
}
