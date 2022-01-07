
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * AnonymousShmem ;
 int AnonymousShmemSize ;
 int LOG ;
 int * UsedShmemSegAddr ;
 int elog (int ,char*,int *,...) ;
 scalar_t__ munmap (int *,int ) ;
 scalar_t__ shmdt (int *) ;

void
PGSharedMemoryDetach(void)
{
 if (UsedShmemSegAddr != ((void*)0))
 {
  if ((shmdt(UsedShmemSegAddr) < 0)




   )
   elog(LOG, "shmdt(%p) failed: %m", UsedShmemSegAddr);
  UsedShmemSegAddr = ((void*)0);
 }

 if (AnonymousShmem != ((void*)0))
 {
  if (munmap(AnonymousShmem, AnonymousShmemSize) < 0)
   elog(LOG, "munmap(%p, %zu) failed: %m",
     AnonymousShmem, AnonymousShmemSize);
  AnonymousShmem = ((void*)0);
 }
}
