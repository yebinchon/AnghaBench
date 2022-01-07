
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int savedcxt; } ;
typedef int Size ;


 int ERROR ;
 void* MemoryContextAlloc (int ,int ) ;
 TYPE_1__* _SPI_current ;
 int elog (int ,char*) ;

void *
SPI_palloc(Size size)
{
 if (_SPI_current == ((void*)0))
  elog(ERROR, "SPI_palloc called while not connected to SPI");

 return MemoryContextAlloc(_SPI_current->savedcxt, size);
}
