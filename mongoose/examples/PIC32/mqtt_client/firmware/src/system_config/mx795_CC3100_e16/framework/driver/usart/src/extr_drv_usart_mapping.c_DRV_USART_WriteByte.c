
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int DRV_HANDLE ;


 int DRV_USART0_WriteByte (int const) ;


void DRV_USART_WriteByte( const DRV_HANDLE handle, const uint8_t byte)
{
    uintptr_t instance;

    instance = handle & 0x00FF;

    switch(instance)
    {
        case 128:
        {
            DRV_USART0_WriteByte(byte);
            break;
        }
        default:
        {
            break;
        }
    }
}
