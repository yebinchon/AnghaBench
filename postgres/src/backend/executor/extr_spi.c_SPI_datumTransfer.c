
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int savedcxt; } ;
typedef int MemoryContext ;
typedef int Datum ;


 int ERROR ;
 int MemoryContextSwitchTo (int ) ;
 TYPE_1__* _SPI_current ;
 int datumTransfer (int ,int,int) ;
 int elog (int ,char*) ;

Datum
SPI_datumTransfer(Datum value, bool typByVal, int typLen)
{
 MemoryContext oldcxt;
 Datum result;

 if (_SPI_current == ((void*)0))
  elog(ERROR, "SPI_datumTransfer called while not connected to SPI");

 oldcxt = MemoryContextSwitchTo(_SPI_current->savedcxt);

 result = datumTransfer(value, typByVal, typLen);

 MemoryContextSwitchTo(oldcxt);

 return result;
}
