
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SPI_execute (char const*,int,long) ;

int
SPI_exec(const char *src, long tcount)
{
 return SPI_execute(src, 0, tcount);
}
