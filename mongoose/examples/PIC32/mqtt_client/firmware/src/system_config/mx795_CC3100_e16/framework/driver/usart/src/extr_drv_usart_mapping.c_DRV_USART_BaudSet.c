
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int DRV_USART_BAUD_SET_RESULT ;
typedef int DRV_HANDLE ;


 int DRV_USART0_BaudSet (int ) ;
 int DRV_USART_BAUD_SET_ERROR ;


DRV_USART_BAUD_SET_RESULT DRV_USART_BaudSet(const DRV_HANDLE handle, uint32_t baud)
{
    uintptr_t instance;
    DRV_USART_BAUD_SET_RESULT returnValue;

    instance = handle & 0x00FF;

    switch(instance)
    {
        case 128:
        {
            returnValue = DRV_USART0_BaudSet(baud);
            break;
        }
        default:
        {
            returnValue = DRV_USART_BAUD_SET_ERROR;
            break;
        }
    }
    return returnValue;
}
