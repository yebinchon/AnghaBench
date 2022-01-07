
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SYS_MODULE_INDEX ;
typedef int DRV_IO_INTENT ;
typedef int DRV_HANDLE ;


 int DRV_HANDLE_INVALID ;
 int DRV_USART0_Open (int const,int const) ;


DRV_HANDLE DRV_USART_Open( const SYS_MODULE_INDEX index, const DRV_IO_INTENT ioIntent)
{
    DRV_HANDLE returnValue;

    switch(index)
    {
        case 128:
        {
            returnValue = DRV_USART0_Open(index,ioIntent);
            break;
        }
        default:
        {
            returnValue = DRV_HANDLE_INVALID;
            break;
        }
    }
    return returnValue;
}
