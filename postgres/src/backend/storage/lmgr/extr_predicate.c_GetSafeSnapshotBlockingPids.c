
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int inLink; TYPE_1__* sxactOut; } ;
struct TYPE_9__ {int pid; int possibleUnsafeConflicts; } ;
struct TYPE_8__ {int pid; } ;
typedef TYPE_2__ SERIALIZABLEXACT ;
typedef TYPE_3__* RWConflict ;


 TYPE_2__* FirstPredXact () ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_SHARED ;
 TYPE_2__* NextPredXact (TYPE_2__*) ;
 int RWConflictData ;
 scalar_t__ SHMQueueNext (int *,int *,int ) ;
 int SerializableXactHashLock ;
 scalar_t__ SxactIsDeferrableWaiting (TYPE_2__*) ;
 int inLink ;
 int offsetof (int ,int ) ;

int
GetSafeSnapshotBlockingPids(int blocked_pid, int *output, int output_size)
{
 int num_written = 0;
 SERIALIZABLEXACT *sxact;

 LWLockAcquire(SerializableXactHashLock, LW_SHARED);


 for (sxact = FirstPredXact(); sxact != ((void*)0); sxact = NextPredXact(sxact))
 {
  if (sxact->pid == blocked_pid)
   break;
 }


 if (sxact != ((void*)0) && SxactIsDeferrableWaiting(sxact))
 {
  RWConflict possibleUnsafeConflict;


  possibleUnsafeConflict = (RWConflict)
   SHMQueueNext(&sxact->possibleUnsafeConflicts,
       &sxact->possibleUnsafeConflicts,
       offsetof(RWConflictData, inLink));

  while (possibleUnsafeConflict != ((void*)0) && num_written < output_size)
  {
   output[num_written++] = possibleUnsafeConflict->sxactOut->pid;
   possibleUnsafeConflict = (RWConflict)
    SHMQueueNext(&sxact->possibleUnsafeConflicts,
        &possibleUnsafeConflict->inLink,
        offsetof(RWConflictData, inLink));
  }
 }

 LWLockRelease(SerializableXactHashLock);

 return num_written;
}
