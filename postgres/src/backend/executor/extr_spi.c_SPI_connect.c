
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SPI_connect_ext (int ) ;

int
SPI_connect(void)
{
 return SPI_connect_ext(0);
}
