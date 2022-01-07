
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ResourceOwner ;
typedef int MemoryContext ;


 int BeginInternalSubTransaction (int *) ;
 int MemoryContextSwitchTo (int ) ;

void
PLy_spi_subtransaction_begin(MemoryContext oldcontext, ResourceOwner oldowner)
{
 BeginInternalSubTransaction(((void*)0));

 MemoryContextSwitchTo(oldcontext);
}
