
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SYS_MODULE_OBJ ;


 int DRV_USART0_Deinitialize () ;


void DRV_USART_Deinitialize( SYS_MODULE_OBJ object)
{
    switch(object)
    {
        case 128:
        {
            DRV_USART0_Deinitialize();
            break;
        }
        default:
        {
            break;
        }
    }
}
