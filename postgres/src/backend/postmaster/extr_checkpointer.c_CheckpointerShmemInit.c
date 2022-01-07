
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int done_cv; int start_cv; int max_requests; int ckpt_lck; } ;
typedef int Size ;
typedef TYPE_1__ CheckpointerShmemStruct ;


 TYPE_1__* CheckpointerShmem ;
 int CheckpointerShmemSize () ;
 int ConditionVariableInit (int *) ;
 int MemSet (TYPE_1__*,int ,int ) ;
 int NBuffers ;
 scalar_t__ ShmemInitStruct (char*,int ,int*) ;
 int SpinLockInit (int *) ;

void
CheckpointerShmemInit(void)
{
 Size size = CheckpointerShmemSize();
 bool found;

 CheckpointerShmem = (CheckpointerShmemStruct *)
  ShmemInitStruct("Checkpointer Data",
      size,
      &found);

 if (!found)
 {





  MemSet(CheckpointerShmem, 0, size);
  SpinLockInit(&CheckpointerShmem->ckpt_lck);
  CheckpointerShmem->max_requests = NBuffers;
  ConditionVariableInit(&CheckpointerShmem->start_cv);
  ConditionVariableInit(&CheckpointerShmem->done_cv);
 }
}
