
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_12__ {int cycle_ctr; int num_vacuums; int max_vacuums; TYPE_4__* vacuums; } ;
struct TYPE_8__ {scalar_t__ relId; scalar_t__ dbId; } ;
struct TYPE_11__ {int cycleid; TYPE_1__ relid; } ;
struct TYPE_9__ {TYPE_1__ lockRelId; } ;
struct TYPE_10__ {TYPE_2__ rd_lockInfo; } ;
typedef TYPE_3__* Relation ;
typedef TYPE_4__ BTOneVacInfo ;
typedef int BTCycleId ;


 int BtreeVacuumLock ;
 int ERROR ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 int MAX_BT_CYCLE_ID ;
 int RelationGetRelationName (TYPE_3__*) ;
 TYPE_5__* btvacinfo ;
 int elog (int ,char*,...) ;

BTCycleId
_bt_start_vacuum(Relation rel)
{
 BTCycleId result;
 int i;
 BTOneVacInfo *vac;

 LWLockAcquire(BtreeVacuumLock, LW_EXCLUSIVE);





 result = ++(btvacinfo->cycle_ctr);
 if (result == 0 || result > MAX_BT_CYCLE_ID)
  result = btvacinfo->cycle_ctr = 1;


 for (i = 0; i < btvacinfo->num_vacuums; i++)
 {
  vac = &btvacinfo->vacuums[i];
  if (vac->relid.relId == rel->rd_lockInfo.lockRelId.relId &&
   vac->relid.dbId == rel->rd_lockInfo.lockRelId.dbId)
  {






   LWLockRelease(BtreeVacuumLock);
   elog(ERROR, "multiple active vacuums for index \"%s\"",
     RelationGetRelationName(rel));
  }
 }


 if (btvacinfo->num_vacuums >= btvacinfo->max_vacuums)
 {
  LWLockRelease(BtreeVacuumLock);
  elog(ERROR, "out of btvacinfo slots");
 }
 vac = &btvacinfo->vacuums[btvacinfo->num_vacuums];
 vac->relid = rel->rd_lockInfo.lockRelId;
 vac->cycleid = result;
 btvacinfo->num_vacuums++;

 LWLockRelease(BtreeVacuumLock);
 return result;
}
