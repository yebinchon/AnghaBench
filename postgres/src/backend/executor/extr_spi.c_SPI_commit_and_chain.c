
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _SPI_commit (int) ;

void
SPI_commit_and_chain(void)
{
 _SPI_commit(1);
}
