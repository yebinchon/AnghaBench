
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int INT_SOURCE_USART_2_ERROR ;
 int INT_SOURCE_USART_2_RECEIVE ;
 int INT_SOURCE_USART_2_TRANSMIT ;
 int PLIB_USART_Disable (int ) ;
 int SYS_INT_SourceDisable (int ) ;
 int USART_ID_2 ;

void DRV_USART0_Deinitialize(void)
{
    bool status;


    status = SYS_INT_SourceDisable(INT_SOURCE_USART_2_TRANSMIT) ;
    status = SYS_INT_SourceDisable(INT_SOURCE_USART_2_RECEIVE) ;
    status = SYS_INT_SourceDisable(INT_SOURCE_USART_2_ERROR);

    (void)status;


    PLIB_USART_Disable (USART_ID_2);

}
