
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DRV_HANDLE ;


 int DRV_USART0_ReceiverBufferIsEmpty () ;


bool DRV_USART_ReceiverBufferIsEmpty( const DRV_HANDLE handle )
{
    uintptr_t instance;
    bool returnValue;

    instance = handle & 0x00FF;

    switch(instance)
    {
        case 128:
        {
            returnValue = DRV_USART0_ReceiverBufferIsEmpty();
            break;
        }
        default:
        {
            returnValue = 0;
            break;
        }
    }
    return returnValue;
}
