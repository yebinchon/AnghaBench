
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int INT_SOURCE_USART_2_TRANSMIT ;
 scalar_t__ PLIB_USART_TransmitterBufferIsFull (int ) ;
 int PLIB_USART_TransmitterByteSend (int ,int const) ;
 int SYS_INT_SourceEnable (int ) ;
 int USART_ID_2 ;

void DRV_USART0_WriteByte(const uint8_t byte)
{

    while(PLIB_USART_TransmitterBufferIsFull(USART_ID_2));

    PLIB_USART_TransmitterByteSend(USART_ID_2, byte);
    SYS_INT_SourceEnable(INT_SOURCE_USART_2_TRANSMIT);
}
