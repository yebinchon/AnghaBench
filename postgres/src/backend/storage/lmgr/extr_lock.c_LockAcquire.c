
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LockAcquireResult ;
typedef int LOCKTAG ;
typedef int LOCKMODE ;


 int LockAcquireExtended (int const*,int ,int,int,int,int *) ;

LockAcquireResult
LockAcquire(const LOCKTAG *locktag,
   LOCKMODE lockmode,
   bool sessionLock,
   bool dontWait)
{
 return LockAcquireExtended(locktag, lockmode, sessionLock, dontWait,
          1, ((void*)0));
}
