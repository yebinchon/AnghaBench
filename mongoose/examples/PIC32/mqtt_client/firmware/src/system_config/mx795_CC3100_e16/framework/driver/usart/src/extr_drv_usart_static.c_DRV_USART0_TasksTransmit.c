
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int INT_SOURCE_USART_2_TRANSMIT ;
 int SYS_INT_SourceDisable (int ) ;
 int SYS_INT_SourceStatusClear (int ) ;
 scalar_t__ SYS_INT_SourceStatusGet (int ) ;

void DRV_USART0_TasksTransmit(void)
{





    if(SYS_INT_SourceStatusGet(INT_SOURCE_USART_2_TRANSMIT))
    {

        SYS_INT_SourceDisable(INT_SOURCE_USART_2_TRANSMIT);


        SYS_INT_SourceStatusClear(INT_SOURCE_USART_2_TRANSMIT);
    }
}
