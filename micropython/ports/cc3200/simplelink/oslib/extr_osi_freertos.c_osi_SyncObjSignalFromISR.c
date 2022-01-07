
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OsiSyncObj_t ;
typedef int OsiReturnVal_e ;


 int OSI_OK ;
 scalar_t__ pdFALSE ;
 scalar_t__ pdTRUE ;
 int taskYIELD () ;
 scalar_t__ xHigherPriorityTaskWoken ;
 scalar_t__ xSemaphoreGiveFromISR (int ,scalar_t__*) ;

OsiReturnVal_e osi_SyncObjSignalFromISR(OsiSyncObj_t* pSyncObj)
{
 xHigherPriorityTaskWoken = pdFALSE;
 if(pdTRUE == xSemaphoreGiveFromISR( *pSyncObj, &xHigherPriorityTaskWoken ))
 {
  if( xHigherPriorityTaskWoken )
  {
   taskYIELD ();
  }
 }
 return OSI_OK;
}
