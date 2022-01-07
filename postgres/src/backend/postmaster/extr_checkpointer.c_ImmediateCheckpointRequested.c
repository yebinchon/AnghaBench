
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ckpt_flags; } ;
typedef TYPE_1__ CheckpointerShmemStruct ;


 int CHECKPOINT_IMMEDIATE ;
 TYPE_1__* CheckpointerShmem ;

__attribute__((used)) static bool
ImmediateCheckpointRequested(void)
{
 volatile CheckpointerShmemStruct *cps = CheckpointerShmem;





 if (cps->ckpt_flags & CHECKPOINT_IMMEDIATE)
  return 1;
 return 0;
}
