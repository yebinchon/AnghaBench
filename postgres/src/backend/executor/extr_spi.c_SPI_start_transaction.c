
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MemoryContext ;


 int CurrentMemoryContext ;
 int MemoryContextSwitchTo (int ) ;
 int StartTransactionCommand () ;

void
SPI_start_transaction(void)
{
 MemoryContext oldcontext = CurrentMemoryContext;

 StartTransactionCommand();
 MemoryContextSwitchTo(oldcontext);
}
