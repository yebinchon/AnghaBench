
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PLIB_USART_ReceiverDataIsAvailable (int ) ;
 int USART_ID_2 ;

bool DRV_USART0_ReceiverBufferIsEmpty( void )
{

    return(!PLIB_USART_ReceiverDataIsAvailable(USART_ID_2));
}
