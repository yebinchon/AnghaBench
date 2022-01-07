
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ MainLWLockArray ;
 int ShmemLock ;
 int SpinLockAcquire (int ) ;
 int SpinLockRelease (int ) ;

int
LWLockNewTrancheId(void)
{
 int result;
 int *LWLockCounter;

 LWLockCounter = (int *) ((char *) MainLWLockArray - sizeof(int));
 SpinLockAcquire(ShmemLock);
 result = (*LWLockCounter)++;
 SpinLockRelease(ShmemLock);

 return result;
}
