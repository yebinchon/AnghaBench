
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SYS_MODULE_INDEX ;
typedef int DRV_IO_INTENT ;
typedef int DRV_HANDLE ;


 int DRV_SPI_INDEX_0 ;

DRV_HANDLE DRV_SPI0_Open ( const SYS_MODULE_INDEX index, const DRV_IO_INTENT intent )
{
    return (DRV_HANDLE)DRV_SPI_INDEX_0;
}
