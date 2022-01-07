
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PLIB_SPI_Disable (int ) ;
 int SPI_ID_1 ;

void DRV_SPI0_Deinitialize ( void )
{

    PLIB_SPI_Disable(SPI_ID_1);

    return;
}
