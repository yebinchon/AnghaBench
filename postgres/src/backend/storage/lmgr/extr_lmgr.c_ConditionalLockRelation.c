
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int relId; int dbId; } ;
struct TYPE_6__ {TYPE_1__ lockRelId; } ;
struct TYPE_7__ {TYPE_2__ rd_lockInfo; } ;
typedef TYPE_3__* Relation ;
typedef scalar_t__ LockAcquireResult ;
typedef int LOCKTAG ;
typedef int LOCKMODE ;
typedef int LOCALLOCK ;


 int AcceptInvalidationMessages () ;
 scalar_t__ LOCKACQUIRE_ALREADY_CLEAR ;
 scalar_t__ LOCKACQUIRE_NOT_AVAIL ;
 scalar_t__ LockAcquireExtended (int *,int ,int,int,int,int **) ;
 int MarkLockClear (int *) ;
 int SET_LOCKTAG_RELATION (int ,int ,int ) ;

bool
ConditionalLockRelation(Relation relation, LOCKMODE lockmode)
{
 LOCKTAG tag;
 LOCALLOCK *locallock;
 LockAcquireResult res;

 SET_LOCKTAG_RELATION(tag,
       relation->rd_lockInfo.lockRelId.dbId,
       relation->rd_lockInfo.lockRelId.relId);

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
