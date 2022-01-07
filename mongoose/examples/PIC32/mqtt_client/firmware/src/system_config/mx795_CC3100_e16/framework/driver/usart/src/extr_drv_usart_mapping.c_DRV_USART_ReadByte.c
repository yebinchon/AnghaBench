
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int DRV_HANDLE ;


 int DRV_USART0_ReadByte () ;

 int SYS_ASSERT (int,char*) ;

uint8_t DRV_USART_ReadByte( const DRV_HANDLE handle )
{
    uintptr_t instance;
    uint8_t returnValue;

    instance = handle & 0x00FF;

    switch(instance)
    {
        case 128:
        {
            returnValue = DRV_USART0_ReadByte();
            break;
        }
        default:
        {
            SYS_ASSERT(0, "Incorrect Driver Handle");
            returnValue = 0;
            break;
        }
    }
    return returnValue;
}
