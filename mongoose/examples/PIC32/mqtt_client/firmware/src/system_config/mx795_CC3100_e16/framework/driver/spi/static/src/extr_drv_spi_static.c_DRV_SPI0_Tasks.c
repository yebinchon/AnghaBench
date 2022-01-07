
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DRV_SPI0_PolledMasterRM8BitTasks (int *) ;
 int gDrvSPI0Obj ;

void DRV_SPI0_Tasks ( void )
{

    DRV_SPI0_PolledMasterRM8BitTasks(&gDrvSPI0Obj);
}
