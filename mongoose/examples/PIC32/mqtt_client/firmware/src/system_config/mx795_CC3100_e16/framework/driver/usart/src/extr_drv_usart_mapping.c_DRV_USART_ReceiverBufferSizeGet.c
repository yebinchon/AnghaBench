
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DRV_HANDLE ;


 unsigned int DRV_USART0_ReceiverBufferSizeGet () ;


unsigned int DRV_USART_ReceiverBufferSizeGet( const DRV_HANDLE handle )
{
    uintptr_t instance;
    unsigned int returnValue;

    instance = handle & 0x00FF;

    switch(instance)
    {
        case 128:
        {
            returnValue = DRV_USART0_ReceiverBufferSizeGet();
            break;
        }
        default:
        {
            returnValue = (unsigned int)((void*)0);
            break;
        }
    }
    return returnValue;
}
