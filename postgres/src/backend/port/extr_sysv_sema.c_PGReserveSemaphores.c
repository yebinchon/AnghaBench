
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_ino; } ;
typedef scalar_t__ PGSemaphore ;
typedef int IpcSemaphoreId ;


 int DataDir ;
 int FATAL ;
 int PANIC ;
 int PGSemaphoreShmemSize (int) ;
 int ReleaseSemaphores ;
 int SEMAS_PER_SET ;
 scalar_t__ ShmemAllocUnlocked (int ) ;
 int elog (int ,char*) ;
 int ereport (int ,int ) ;
 int errcode_for_file_access () ;
 int errmsg (char*,int ) ;
 scalar_t__ malloc (int) ;
 int maxSemaSets ;
 int maxSharedSemas ;
 int * mySemaSets ;
 int nextSemaKey ;
 int nextSemaNumber ;
 scalar_t__ numSemaSets ;
 scalar_t__ numSharedSemas ;
 int on_shmem_exit (int ,int ) ;
 scalar_t__ sharedSemas ;
 scalar_t__ stat (int ,struct stat*) ;

void
PGReserveSemaphores(int maxSemas)
{
 struct stat statbuf;







 if (stat(DataDir, &statbuf) < 0)
  ereport(FATAL,
    (errcode_for_file_access(),
     errmsg("could not stat data directory \"%s\": %m",
      DataDir)));






 sharedSemas = (PGSemaphore)
  ShmemAllocUnlocked(PGSemaphoreShmemSize(maxSemas));
 numSharedSemas = 0;
 maxSharedSemas = maxSemas;

 maxSemaSets = (maxSemas + SEMAS_PER_SET - 1) / SEMAS_PER_SET;
 mySemaSets = (IpcSemaphoreId *)
  malloc(maxSemaSets * sizeof(IpcSemaphoreId));
 if (mySemaSets == ((void*)0))
  elog(PANIC, "out of memory");
 numSemaSets = 0;
 nextSemaKey = statbuf.st_ino;
 nextSemaNumber = SEMAS_PER_SET;

 on_shmem_exit(ReleaseSemaphores, 0);
}
