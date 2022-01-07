
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DRV_USART_LINE_CONTROL_SET_RESULT ;
typedef int DRV_USART_LINE_CONTROL ;
typedef int DRV_HANDLE ;


 int DRV_USART0_LineControlSet (int const) ;

 int DRV_USART_LINE_CONTROL_SET_ERROR ;

DRV_USART_LINE_CONTROL_SET_RESULT DRV_USART_LineControlSet(const DRV_HANDLE handle,const DRV_USART_LINE_CONTROL lineControl)
{
    uintptr_t instance;
    DRV_USART_LINE_CONTROL_SET_RESULT returnValue;

    instance = handle & 0x00FF;

    switch(instance)
    {
        case 128:
        {
            returnValue = DRV_USART0_LineControlSet(lineControl);
            break;
        }
        default:
        {
            returnValue = DRV_USART_LINE_CONTROL_SET_ERROR;
            break;
        }
    }
    return returnValue;
}
