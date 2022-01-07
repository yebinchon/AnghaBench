
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int QueueHandle_t ;
typedef int OsiTime_t ;
typedef int OsiReturnVal_e ;
typedef scalar_t__ OsiMsgQ_t ;


 int OSI_OK ;
 int OSI_OPERATION_FAILED ;
 int pdFALSE ;
 scalar_t__ pdPASS ;
 int taskYIELD () ;
 int xHigherPriorityTaskWoken ;
 scalar_t__ xQueueSendFromISR (int ,void*,int *) ;

OsiReturnVal_e osi_MsgQWrite(OsiMsgQ_t* pMsgQ, void* pMsg , OsiTime_t Timeout)
{
 xHigherPriorityTaskWoken = pdFALSE;
    if(pdPASS == xQueueSendFromISR((QueueHandle_t) *pMsgQ, pMsg, &xHigherPriorityTaskWoken ))
    {
  taskYIELD ();
  return OSI_OK;
    }
 else
 {
  return OSI_OPERATION_FAILED;
 }
}
