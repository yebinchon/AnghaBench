
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ckpt_done; int ckpt_lck; } ;


 TYPE_1__* CheckpointerShmem ;
 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;

bool
FirstCallSinceLastCheckpoint(void)
{
 static int ckpt_done = 0;
 int new_done;
 bool FirstCall = 0;

 SpinLockAcquire(&CheckpointerShmem->ckpt_lck);
 new_done = CheckpointerShmem->ckpt_done;
 SpinLockRelease(&CheckpointerShmem->ckpt_lck);

 if (new_done != ckpt_done)
  FirstCall = 1;

 ckpt_done = new_done;

 return FirstCall;
}
