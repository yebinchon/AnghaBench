
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SYS_MODULE_OBJ ;
typedef int SYS_MODULE_INIT ;
typedef int SYS_MODULE_INDEX ;


 int DRV_SPI0_Initialize () ;

 int SYS_MODULE_OBJ_INVALID ;

SYS_MODULE_OBJ DRV_SPI_Initialize(const SYS_MODULE_INDEX index,const SYS_MODULE_INIT * const init)
{
    SYS_MODULE_OBJ returnValue;

    switch(index)
    {
        case 128:
        {
            returnValue = DRV_SPI0_Initialize();
            break;
        }
        default:
        {
            returnValue = SYS_MODULE_OBJ_INVALID;
            break;
        }
    }
    return returnValue;
}
