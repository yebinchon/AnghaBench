
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_ino; } ;
typedef int sem_t ;
typedef scalar_t__ PGSemaphore ;


 int DataDir ;
 int FATAL ;
 int PANIC ;
 int PGSemaphoreShmemSize (int) ;
 int ReleaseSemaphores ;
 scalar_t__ ShmemAllocUnlocked (int ) ;
 int elog (int ,char*) ;
 int ereport (int ,int ) ;
 int errcode_for_file_access () ;
 int errmsg (char*,int ) ;
 scalar_t__ malloc (int) ;
 int maxSems ;
 int ** mySemPointers ;
 int nextSemKey ;
 scalar_t__ numSems ;
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


 numSems = 0;
 maxSems = maxSemas;
 nextSemKey = statbuf.st_ino;

 on_shmem_exit(ReleaseSemaphores, 0);
}
