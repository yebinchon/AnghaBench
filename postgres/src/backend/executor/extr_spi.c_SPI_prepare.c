
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SPIPlanPtr ;
typedef int Oid ;


 int SPI_prepare_cursor (char const*,int,int *,int ) ;

SPIPlanPtr
SPI_prepare(const char *src, int nargs, Oid *argtypes)
{
 return SPI_prepare_cursor(src, nargs, argtypes, 0);
}
