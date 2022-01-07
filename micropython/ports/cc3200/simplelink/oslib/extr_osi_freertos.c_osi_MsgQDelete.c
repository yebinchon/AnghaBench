
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int QueueHandle_t ;
typedef int OsiReturnVal_e ;
typedef scalar_t__ OsiMsgQ_t ;


 int OSI_OK ;
 int vQueueDelete (int ) ;

OsiReturnVal_e osi_MsgQDelete(OsiMsgQ_t* pMsgQ)
{
 vQueueDelete((QueueHandle_t) *pMsgQ );
    return OSI_OK;
}
