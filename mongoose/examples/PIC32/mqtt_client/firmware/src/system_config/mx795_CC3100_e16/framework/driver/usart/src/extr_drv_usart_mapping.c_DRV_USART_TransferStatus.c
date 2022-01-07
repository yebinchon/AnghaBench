
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DRV_USART_TRANSFER_STATUS ;
typedef int DRV_HANDLE ;


 int DRV_USART0_TransferStatus () ;


DRV_USART_TRANSFER_STATUS DRV_USART_TransferStatus( const DRV_HANDLE handle )
{
    uintptr_t instance;
    DRV_USART_TRANSFER_STATUS returnValue;

    instance = handle & 0x00FF;

    switch(instance)
    {
        case 128:
        {
            returnValue = DRV_USART0_TransferStatus();
            break;
        }
        default:
        {
            returnValue = (DRV_USART_TRANSFER_STATUS)((void*)0);
            break;
        }
    }
    return returnValue;
}
