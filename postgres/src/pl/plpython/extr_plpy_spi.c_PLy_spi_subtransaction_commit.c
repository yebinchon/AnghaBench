
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ResourceOwner ;
typedef int MemoryContext ;


 int CurrentResourceOwner ;
 int MemoryContextSwitchTo (int ) ;
 int ReleaseCurrentSubTransaction () ;

void
PLy_spi_subtransaction_commit(MemoryContext oldcontext, ResourceOwner oldowner)
{

 ReleaseCurrentSubTransaction();
 MemoryContextSwitchTo(oldcontext);
 CurrentResourceOwner = oldowner;
}
