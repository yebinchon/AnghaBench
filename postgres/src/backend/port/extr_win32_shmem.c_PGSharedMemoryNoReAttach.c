
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Assert (int ) ;
 int IsUnderPostmaster ;
 int PGSharedMemoryDetach () ;
 int * ShmemProtectiveRegion ;
 int * UsedShmemSegAddr ;

void
PGSharedMemoryNoReAttach(void)
{
 Assert(ShmemProtectiveRegion != ((void*)0));
 Assert(UsedShmemSegAddr != ((void*)0));
 Assert(IsUnderPostmaster);





 UsedShmemSegAddr = ((void*)0);






 PGSharedMemoryDetach();
}
