
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DRV_USART_CLIENT_STATUS ;
typedef int DRV_HANDLE ;


 int DRV_CLIENT_STATUS_ERROR ;
 int DRV_USART0_ClientStatus () ;


DRV_USART_CLIENT_STATUS DRV_USART_ClientStatus ( DRV_HANDLE handle )
{
    uintptr_t instance;
    DRV_USART_CLIENT_STATUS returnValue;

    instance = handle & 0x00FF;

    switch(instance)
    {
        case 128:
        {
            returnValue = DRV_USART0_ClientStatus();
            break;
        }
        default:
        {
            returnValue = DRV_CLIENT_STATUS_ERROR;
            break;
        }
    }
    return returnValue;
}
