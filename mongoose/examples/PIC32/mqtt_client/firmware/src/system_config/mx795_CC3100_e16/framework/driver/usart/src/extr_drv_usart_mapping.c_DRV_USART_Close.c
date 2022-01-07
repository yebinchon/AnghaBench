
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DRV_HANDLE ;


 int DRV_USART0_Close () ;


void DRV_USART_Close( const DRV_HANDLE handle)
{
    uintptr_t instance;

    instance = handle & 0x00FF;

    switch(instance)
    {
        case 128:
        {
            DRV_USART0_Close();
            break;
        }
        default:
        {
            break;
        }
    }
}
