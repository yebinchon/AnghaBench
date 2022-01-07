
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int INT_SOURCE_USART_2_RECEIVE ;
 int SYS_INT_SourceStatusClear (int ) ;
 scalar_t__ SYS_INT_SourceStatusGet (int ) ;

void DRV_USART0_TasksReceive(void)
{





    if(SYS_INT_SourceStatusGet(INT_SOURCE_USART_2_RECEIVE))
    {


        SYS_INT_SourceStatusClear(INT_SOURCE_USART_2_RECEIVE);
    }
}
