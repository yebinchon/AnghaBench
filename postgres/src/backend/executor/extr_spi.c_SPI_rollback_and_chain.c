
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _SPI_rollback (int) ;

void
SPI_rollback_and_chain(void)
{
 _SPI_rollback(1);
}
