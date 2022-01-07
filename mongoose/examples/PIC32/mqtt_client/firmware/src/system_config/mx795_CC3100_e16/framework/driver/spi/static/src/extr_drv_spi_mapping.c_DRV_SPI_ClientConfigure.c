
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;
typedef int DRV_SPI_CLIENT_DATA ;
typedef int DRV_HANDLE ;


 int DRV_HANDLE_INVALID ;
 int DRV_SPI0_ClientConfigure (int const*) ;


int32_t DRV_SPI_ClientConfigure ( DRV_HANDLE handle, const DRV_SPI_CLIENT_DATA * cfgData )
{
    uintptr_t instance;
    int32_t returnValue;

    instance = handle & 0x00FF;

    switch(instance)
    {
        case 128:
        {
            returnValue = DRV_SPI0_ClientConfigure( cfgData );
            break;
        }
        default:
        {
            returnValue = (int32_t)DRV_HANDLE_INVALID;
            break;
        }
    }
    return returnValue;
}
