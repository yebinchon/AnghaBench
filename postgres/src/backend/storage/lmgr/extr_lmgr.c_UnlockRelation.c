
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


 int LockRelease (int *,int ,int) ;
 int SET_LOCKTAG_RELATION (int ,int ,int ) ;

void
UnlockRelation(Relation relation, LOCKMODE lockmode)
{
 LOCKTAG tag;

 SET_LOCKTAG_RELATION(tag,
       relation->rd_lockInfo.lockRelId.dbId,
       relation->rd_lockInfo.lockRelId.relId);

 LockRelease(&tag, lockmode, 0);
}
