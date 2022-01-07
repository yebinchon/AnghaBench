
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;
typedef scalar_t__ LockAcquireResult ;
typedef int LOCKTAG ;
typedef int LOCKMODE ;
typedef int LOCALLOCK ;


 int AcceptInvalidationMessages () ;
 scalar_t__ LOCKACQUIRE_ALREADY_CLEAR ;
 scalar_t__ LOCKACQUIRE_NOT_AVAIL ;
 scalar_t__ LockAcquireExtended (int *,int ,int,int,int,int **) ;
 int MarkLockClear (int *) ;
 int SetLocktagRelationOid (int *,int ) ;

bool
ConditionalLockRelationOid(Oid relid, LOCKMODE lockmode)
{
 LOCKTAG tag;
 LOCALLOCK *locallock;
 LockAcquireResult res;

 SetLocktagRelationOid(&tag, relid);

 res = LockAcquireExtended(&tag, lockmode, 0, 1, 1, &locallock);

 if (res == LOCKACQUIRE_NOT_AVAIL)
  return 0;





 if (res != LOCKACQUIRE_ALREADY_CLEAR)
 {
  AcceptInvalidationMessages();
  MarkLockClear(locallock);
 }

 return 1;
}
