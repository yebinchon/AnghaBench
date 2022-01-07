
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_6__ {scalar_t__ baudRate; int * operationEnded; int * operationStarting; } ;
struct TYPE_5__ {int * operationEnded; int * operationStarting; } ;
typedef TYPE_1__ DRV_SPI_OBJ ;
typedef TYPE_2__ DRV_SPI_CLIENT_DATA ;


 int CLK_BUS_PERIPHERAL_2 ;
 int PLIB_SPI_BaudRateSet (int ,int ,scalar_t__) ;
 int SPI_ID_1 ;
 int SYS_CLK_PeripheralFrequencyGet (int ) ;
 TYPE_1__ gDrvSPI0Obj ;

int32_t DRV_SPI0_ClientConfigure ( const DRV_SPI_CLIENT_DATA * cfgData )
{
    DRV_SPI_OBJ *dObj = (DRV_SPI_OBJ*)((void*)0);

    dObj = &gDrvSPI0Obj;

    if (cfgData == ((void*)0))
    {

        return 0;
    }

    if (cfgData->operationStarting != ((void*)0))
    {
        dObj->operationStarting = cfgData->operationStarting;
    }

    if (cfgData->operationEnded != ((void*)0))
    {
        dObj->operationEnded = cfgData->operationEnded;
    }

    if (cfgData->baudRate != 0)
    {

        PLIB_SPI_BaudRateSet (SPI_ID_1,
                              SYS_CLK_PeripheralFrequencyGet(CLK_BUS_PERIPHERAL_2),
                              cfgData->baudRate);
    }

    return 0;
}
