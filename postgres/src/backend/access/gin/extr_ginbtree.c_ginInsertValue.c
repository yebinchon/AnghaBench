
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int buffer; } ;
typedef int GinStatsData ;
typedef TYPE_1__ GinBtreeStack ;
typedef int GinBtree ;


 int BufferGetPage (int ) ;
 int GIN_UNLOCK ;
 scalar_t__ GinPageIsIncompleteSplit (int ) ;
 int InvalidBlockNumber ;
 int InvalidBuffer ;
 int LockBuffer (int ,int ) ;
 int freeGinBtreeStack (TYPE_1__*) ;
 int ginFinishSplit (int ,TYPE_1__*,int,int *) ;
 int ginPlaceToPage (int ,TYPE_1__*,void*,int ,int ,int *) ;

void
ginInsertValue(GinBtree btree, GinBtreeStack *stack, void *insertdata,
      GinStatsData *buildStats)
{
 bool done;


 if (GinPageIsIncompleteSplit(BufferGetPage(stack->buffer)))
  ginFinishSplit(btree, stack, 0, buildStats);

 done = ginPlaceToPage(btree, stack,
        insertdata, InvalidBlockNumber,
        InvalidBuffer, buildStats);
 if (done)
 {
  LockBuffer(stack->buffer, GIN_UNLOCK);
  freeGinBtreeStack(stack);
 }
 else
  ginFinishSplit(btree, stack, 1, buildStats);
}
