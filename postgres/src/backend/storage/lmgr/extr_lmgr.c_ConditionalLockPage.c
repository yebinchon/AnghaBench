
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
typedef int LOCKTAG ;
typedef int LOCKMODE ;
typedef int BlockNumber ;


 scalar_t__ LOCKACQUIRE_NOT_AVAIL ;
 scalar_t__ LockAcquire (int *,int ,int,int) ;
 int SET_LOCKTAG_PAGE (int ,int ,int ,int ) ;

bool
ConditionalLockPage(Relation relation, BlockNumber blkno, LOCKMODE lockmode)
{
 LOCKTAG tag;

 SET_LOCKTAG_PAGE(tag,
      relation->rd_lockInfo.lockRelId.dbId,
      relation->rd_lockInfo.lockRelId.relId,
      blkno);

 return (LockAcquire(&tag, lockmode, 0, 1) != LOCKACQUIRE_NOT_AVAIL);
}
