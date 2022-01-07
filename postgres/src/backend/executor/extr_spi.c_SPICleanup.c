
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ SPI_processed ;
 scalar_t__ SPI_result ;
 int * SPI_tuptable ;
 int _SPI_connected ;
 int * _SPI_current ;

void
SPICleanup(void)
{
 _SPI_current = ((void*)0);
 _SPI_connected = -1;

 SPI_processed = 0;
 SPI_tuptable = ((void*)0);
 SPI_result = 0;
}
