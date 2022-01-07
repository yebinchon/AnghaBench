
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int flags; } ;
struct TYPE_8__ {int buffer; } ;
struct TYPE_7__ {int predictNumberResult; int matchBitmap; } ;
typedef int Snapshot ;
typedef int Relation ;
typedef int Page ;
typedef TYPE_1__* GinScanEntry ;
typedef TYPE_2__ GinBtreeStack ;
typedef int GinBtreeData ;
typedef int Buffer ;
typedef int BlockNumber ;


 int BufferGetPage (int ) ;
 int GIN_DELETED ;
 int GIN_SHARE ;
 int GinDataLeafPageGetItemsToTbm (int ,int ) ;
 TYPE_6__* GinPageGetOpaque (int ) ;
 scalar_t__ GinPageRightMost (int ) ;
 int IncrBufferRefCount (int ) ;
 int UnlockReleaseBuffer (int ) ;
 int freeGinBtreeStack (TYPE_2__*) ;
 TYPE_2__* ginScanBeginPostingTree (int *,int ,int ,int ) ;
 int ginStepRight (int ,int ,int ) ;

__attribute__((used)) static void
scanPostingTree(Relation index, GinScanEntry scanEntry,
    BlockNumber rootPostingTree, Snapshot snapshot)
{
 GinBtreeData btree;
 GinBtreeStack *stack;
 Buffer buffer;
 Page page;


 stack = ginScanBeginPostingTree(&btree, index, rootPostingTree, snapshot);
 buffer = stack->buffer;

 IncrBufferRefCount(buffer);

 freeGinBtreeStack(stack);




 for (;;)
 {
  page = BufferGetPage(buffer);
  if ((GinPageGetOpaque(page)->flags & GIN_DELETED) == 0)
  {
   int n = GinDataLeafPageGetItemsToTbm(page, scanEntry->matchBitmap);

   scanEntry->predictNumberResult += n;
  }

  if (GinPageRightMost(page))
   break;

  buffer = ginStepRight(buffer, index, GIN_SHARE);
 }

 UnlockReleaseBuffer(buffer);
}
