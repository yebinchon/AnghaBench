
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {int locktag_lockmethodid; } ;
struct TYPE_9__ {int relId; int dbId; } ;
struct TYPE_10__ {TYPE_1__ lockRelId; } ;
struct TYPE_11__ {TYPE_2__ rd_lockInfo; } ;
typedef TYPE_3__* Relation ;
typedef TYPE_4__ LOCKTAG ;
typedef scalar_t__ LOCKMODE ;


 int GetLockmodeName (int ,scalar_t__) ;
 scalar_t__ LockHeldByMe (TYPE_4__*,scalar_t__) ;
 scalar_t__ MaxLockMode ;
 int RelationGetRelationName (TYPE_3__*) ;
 int SET_LOCKTAG_RELATION (TYPE_4__,int ,int ) ;
 int WARNING ;
 int elog (int ,char*,int ,int ,int ) ;

bool
CheckRelationLockedByMe(Relation relation, LOCKMODE lockmode, bool orstronger)
{
 LOCKTAG tag;

 SET_LOCKTAG_RELATION(tag,
       relation->rd_lockInfo.lockRelId.dbId,
       relation->rd_lockInfo.lockRelId.relId);

 if (LockHeldByMe(&tag, lockmode))
  return 1;

 if (orstronger)
 {
  LOCKMODE slockmode;

  for (slockmode = lockmode + 1;
    slockmode <= MaxLockMode;
    slockmode++)
  {
   if (LockHeldByMe(&tag, slockmode))
   {







    return 1;
   }
  }
 }

 return 0;
}
