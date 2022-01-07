
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int32 ;
struct TYPE_3__ {int nPendingHeapTuples; int nPendingPages; int tailFreeSize; void* tail; void* head; } ;
typedef int Relation ;
typedef int ItemIdData ;
typedef int IndexTuple ;
typedef TYPE_1__ GinMetaPageData ;
typedef scalar_t__ Buffer ;


 int Assert (int) ;
 void* BufferGetBlockNumber (scalar_t__) ;
 int GinListPageSize ;
 scalar_t__ GinNewBuffer (int ) ;
 int IndexTupleSize (int ) ;
 void* InvalidBlockNumber ;
 scalar_t__ InvalidBuffer ;
 int MAXALIGN (int ) ;
 int writeListPage (int ,scalar_t__,int *,int,void*) ;

__attribute__((used)) static void
makeSublist(Relation index, IndexTuple *tuples, int32 ntuples,
   GinMetaPageData *res)
{
 Buffer curBuffer = InvalidBuffer;
 Buffer prevBuffer = InvalidBuffer;
 int i,
    size = 0,
    tupsize;
 int startTuple = 0;

 Assert(ntuples > 0);




 for (i = 0; i < ntuples; i++)
 {
  if (curBuffer == InvalidBuffer)
  {
   curBuffer = GinNewBuffer(index);

   if (prevBuffer != InvalidBuffer)
   {
    res->nPendingPages++;
    writeListPage(index, prevBuffer,
         tuples + startTuple,
         i - startTuple,
         BufferGetBlockNumber(curBuffer));
   }
   else
   {
    res->head = BufferGetBlockNumber(curBuffer);
   }

   prevBuffer = curBuffer;
   startTuple = i;
   size = 0;
  }

  tupsize = MAXALIGN(IndexTupleSize(tuples[i])) + sizeof(ItemIdData);

  if (size + tupsize > GinListPageSize)
  {

   i--;
   curBuffer = InvalidBuffer;
  }
  else
  {
   size += tupsize;
  }
 }




 res->tail = BufferGetBlockNumber(curBuffer);
 res->tailFreeSize = writeListPage(index, curBuffer,
           tuples + startTuple,
           ntuples - startTuple,
           InvalidBlockNumber);
 res->nPendingPages++;

 res->nPendingHeapTuples = 1;
}
