
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int PLIB_USART_ReceiverByteReceive (int ) ;
 int USART_ID_2 ;

uint8_t DRV_USART0_ReadByte(void)
{
    uint8_t readValue;


    readValue = PLIB_USART_ReceiverByteReceive(USART_ID_2);

    return readValue;
}
