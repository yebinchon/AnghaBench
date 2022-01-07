
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int lockRelId; } ;
struct TYPE_6__ {TYPE_1__ rd_lockInfo; } ;
typedef TYPE_2__* Relation ;
typedef int LockRelId ;
typedef int LOCKMODE ;


 int Assert (int) ;
 int MAX_LOCKMODES ;
 int NoLock ;
 int RelationClose (TYPE_2__*) ;
 int UnlockRelationId (int *,int ) ;

void
index_close(Relation relation, LOCKMODE lockmode)
{
 LockRelId relid = relation->rd_lockInfo.lockRelId;

 Assert(lockmode >= NoLock && lockmode < MAX_LOCKMODES);


 RelationClose(relation);

 if (lockmode != NoLock)
  UnlockRelationId(&relid, lockmode);
}
