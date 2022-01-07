
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * QueueHandle_t ;
typedef int OsiReturnVal_e ;
typedef scalar_t__ OsiMsgQ_t ;


 int ASSERT (int ) ;
 int OSI_OK ;
 int * xQueueCreate (unsigned long,unsigned long) ;

OsiReturnVal_e osi_MsgQCreate(OsiMsgQ_t* pMsgQ ,
         char* pMsgQName,
         unsigned long MsgSize,
         unsigned long MaxMsgs)
{
 QueueHandle_t handle;


 handle = xQueueCreate( MaxMsgs, MsgSize );
 ASSERT (handle != ((void*)0));

 *pMsgQ = (OsiMsgQ_t)handle;
 return OSI_OK;
}
