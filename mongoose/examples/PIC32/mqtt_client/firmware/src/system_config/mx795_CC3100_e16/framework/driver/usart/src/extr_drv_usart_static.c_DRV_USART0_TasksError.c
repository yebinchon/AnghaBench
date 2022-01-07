
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int INT_SOURCE_USART_2_ERROR ;
 int PLIB_USART_ReceiverOverrunErrorClear (int ) ;
 scalar_t__ PLIB_USART_ReceiverOverrunHasOccurred (int ) ;
 int SYS_INT_SourceStatusClear (int ) ;
 scalar_t__ SYS_INT_SourceStatusGet (int ) ;
 int USART_ID_2 ;

void DRV_USART0_TasksError(void)
{





    if(SYS_INT_SourceStatusGet(INT_SOURCE_USART_2_ERROR))
    {

        if(PLIB_USART_ReceiverOverrunHasOccurred(USART_ID_2))
        {
            PLIB_USART_ReceiverOverrunErrorClear(USART_ID_2);
        }


        SYS_INT_SourceStatusClear(INT_SOURCE_USART_2_ERROR);
    }
}
