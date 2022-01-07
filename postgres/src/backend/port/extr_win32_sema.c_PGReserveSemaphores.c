
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HANDLE ;


 int PANIC ;
 int ReleaseSemaphores ;
 int elog (int ,char*) ;
 scalar_t__ malloc (int) ;
 int maxSems ;
 int * mySemSet ;
 scalar_t__ numSems ;
 int on_shmem_exit (int ,int ) ;

void
PGReserveSemaphores(int maxSemas)
{
 mySemSet = (HANDLE *) malloc(maxSemas * sizeof(HANDLE));
 if (mySemSet == ((void*)0))
  elog(PANIC, "out of memory");
 numSems = 0;
 maxSems = maxSemas;

 on_shmem_exit(ReleaseSemaphores, 0);
}
