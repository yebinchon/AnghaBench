
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int index; } ;
struct TYPE_5__ {scalar_t__ off; int blkno; int buffer; } ;
typedef int Snapshot ;
typedef int Page ;
typedef TYPE_1__ GinBtreeStack ;
typedef TYPE_2__ GinBtreeData ;


 int BufferGetBlockNumber (int ) ;
 int BufferGetPage (int ) ;
 scalar_t__ FirstOffsetNumber ;
 int GIN_SHARE ;
 scalar_t__ GinPageRightMost (int ) ;
 scalar_t__ PageGetMaxOffsetNumber (int ) ;
 int PredicateLockPage (int ,int ,int ) ;
 int ginStepRight (int ,int ,int ) ;

__attribute__((used)) static bool
moveRightIfItNeeded(GinBtreeData *btree, GinBtreeStack *stack, Snapshot snapshot)
{
 Page page = BufferGetPage(stack->buffer);

 if (stack->off > PageGetMaxOffsetNumber(page))
 {



  if (GinPageRightMost(page))
   return 0;

  stack->buffer = ginStepRight(stack->buffer, btree->index, GIN_SHARE);
  stack->blkno = BufferGetBlockNumber(stack->buffer);
  stack->off = FirstOffsetNumber;
  PredicateLockPage(btree->index, stack->blkno, snapshot);
 }

 return 1;
}
