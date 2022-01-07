
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
 scalar_t__ pdTRUE ;
 scalar_t__ xQueueReceive (int ,void*,int ) ;

OsiReturnVal_e osi_MsgQRead(OsiMsgQ_t* pMsgQ, void* pMsg , OsiTime_t Timeout)
{

 if( pdTRUE == xQueueReceive((QueueHandle_t)*pMsgQ,pMsg,Timeout) )
 {
  return OSI_OK;
 }
 else
 {
  return OSI_OPERATION_FAILED;
 }
}
