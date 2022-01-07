
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* av_workItems; } ;
struct TYPE_3__ {int avw_used; int avw_active; int avw_blockNumber; int avw_relation; int avw_database; int avw_type; } ;
typedef int Oid ;
typedef int BlockNumber ;
typedef int AutoVacuumWorkItemType ;
typedef TYPE_1__ AutoVacuumWorkItem ;


 TYPE_2__* AutoVacuumShmem ;
 int AutovacuumLock ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 int MyDatabaseId ;
 int NUM_WORKITEMS ;

bool
AutoVacuumRequestWork(AutoVacuumWorkItemType type, Oid relationId,
       BlockNumber blkno)
{
 int i;
 bool result = 0;

 LWLockAcquire(AutovacuumLock, LW_EXCLUSIVE);




 for (i = 0; i < NUM_WORKITEMS; i++)
 {
  AutoVacuumWorkItem *workitem = &AutoVacuumShmem->av_workItems[i];

  if (workitem->avw_used)
   continue;

  workitem->avw_used = 1;
  workitem->avw_active = 0;
  workitem->avw_type = type;
  workitem->avw_database = MyDatabaseId;
  workitem->avw_relation = relationId;
  workitem->avw_blockNumber = blkno;
  result = 1;


  break;
 }

 LWLockRelease(AutovacuumLock);

 return result;
}
