
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int availableList; } ;
struct TYPE_8__ {int inLink; int outLink; TYPE_1__* sxactIn; TYPE_1__* sxactOut; } ;
struct TYPE_7__ {int possibleUnsafeConflicts; } ;
typedef TYPE_1__ SERIALIZABLEXACT ;
typedef TYPE_2__* RWConflict ;


 int Assert (int) ;
 int ERRCODE_OUT_OF_MEMORY ;
 int ERROR ;
 int RWConflictData ;
 TYPE_6__* RWConflictPool ;
 int SHMQueueDelete (int *) ;
 int SHMQueueInsertBefore (int *,int *) ;
 scalar_t__ SHMQueueNext (int *,int *,int ) ;
 int SxactIsReadOnly (TYPE_1__*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errhint (char*) ;
 int errmsg (char*) ;
 int offsetof (int ,int ) ;
 int outLink ;

__attribute__((used)) static void
SetPossibleUnsafeConflict(SERIALIZABLEXACT *roXact,
        SERIALIZABLEXACT *activeXact)
{
 RWConflict conflict;

 Assert(roXact != activeXact);
 Assert(SxactIsReadOnly(roXact));
 Assert(!SxactIsReadOnly(activeXact));

 conflict = (RWConflict)
  SHMQueueNext(&RWConflictPool->availableList,
      &RWConflictPool->availableList,
      offsetof(RWConflictData, outLink));
 if (!conflict)
  ereport(ERROR,
    (errcode(ERRCODE_OUT_OF_MEMORY),
     errmsg("not enough elements in RWConflictPool to record a potential read/write conflict"),
     errhint("You might need to run fewer transactions at a time or increase max_connections.")));

 SHMQueueDelete(&conflict->outLink);

 conflict->sxactOut = activeXact;
 conflict->sxactIn = roXact;
 SHMQueueInsertBefore(&activeXact->possibleUnsafeConflicts,
       &conflict->outLink);
 SHMQueueInsertBefore(&roXact->possibleUnsafeConflicts,
       &conflict->inLink);
}
