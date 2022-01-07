
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int availableList; } ;
struct TYPE_9__ {int inLink; int outLink; TYPE_1__* sxactIn; TYPE_1__* sxactOut; } ;
struct TYPE_8__ {int inConflicts; int outConflicts; } ;
typedef TYPE_1__ SERIALIZABLEXACT ;
typedef TYPE_2__* RWConflict ;


 int Assert (int) ;
 int ERRCODE_OUT_OF_MEMORY ;
 int ERROR ;
 int RWConflictData ;
 int RWConflictExists (TYPE_1__*,TYPE_1__*) ;
 TYPE_5__* RWConflictPool ;
 int SHMQueueDelete (int *) ;
 int SHMQueueInsertBefore (int *,int *) ;
 scalar_t__ SHMQueueNext (int *,int *,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errhint (char*) ;
 int errmsg (char*) ;
 int offsetof (int ,int ) ;
 int outLink ;

__attribute__((used)) static void
SetRWConflict(SERIALIZABLEXACT *reader, SERIALIZABLEXACT *writer)
{
 RWConflict conflict;

 Assert(reader != writer);
 Assert(!RWConflictExists(reader, writer));

 conflict = (RWConflict)
  SHMQueueNext(&RWConflictPool->availableList,
      &RWConflictPool->availableList,
      offsetof(RWConflictData, outLink));
 if (!conflict)
  ereport(ERROR,
    (errcode(ERRCODE_OUT_OF_MEMORY),
     errmsg("not enough elements in RWConflictPool to record a read/write conflict"),
     errhint("You might need to run fewer transactions at a time or increase max_connections.")));

 SHMQueueDelete(&conflict->outLink);

 conflict->sxactOut = reader;
 conflict->sxactIn = writer;
 SHMQueueInsertBefore(&reader->outConflicts, &conflict->outLink);
 SHMQueueInsertBefore(&writer->inConflicts, &conflict->inLink);
}
