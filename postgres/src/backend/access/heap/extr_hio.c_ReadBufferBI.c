
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ current_buf; int * strategy; } ;
typedef int Relation ;
typedef scalar_t__ ReadBufferMode ;
typedef TYPE_1__* BulkInsertState ;
typedef scalar_t__ Buffer ;
typedef scalar_t__ BlockNumber ;


 int Assert (int) ;
 scalar_t__ BufferGetBlockNumber (scalar_t__) ;
 int IncrBufferRefCount (scalar_t__) ;
 scalar_t__ InvalidBuffer ;
 int MAIN_FORKNUM ;
 scalar_t__ RBM_ZERO_AND_CLEANUP_LOCK ;
 scalar_t__ RBM_ZERO_AND_LOCK ;
 scalar_t__ ReadBufferExtended (int ,int ,scalar_t__,scalar_t__,int *) ;
 int ReleaseBuffer (scalar_t__) ;

__attribute__((used)) static Buffer
ReadBufferBI(Relation relation, BlockNumber targetBlock,
    ReadBufferMode mode, BulkInsertState bistate)
{
 Buffer buffer;


 if (!bistate)
  return ReadBufferExtended(relation, MAIN_FORKNUM, targetBlock,
          mode, ((void*)0));


 if (bistate->current_buf != InvalidBuffer)
 {
  if (BufferGetBlockNumber(bistate->current_buf) == targetBlock)
  {




   Assert(mode != RBM_ZERO_AND_LOCK &&
       mode != RBM_ZERO_AND_CLEANUP_LOCK);

   IncrBufferRefCount(bistate->current_buf);
   return bistate->current_buf;
  }

  ReleaseBuffer(bistate->current_buf);
  bistate->current_buf = InvalidBuffer;
 }


 buffer = ReadBufferExtended(relation, MAIN_FORKNUM, targetBlock,
        mode, bistate->strategy);


 IncrBufferRefCount(buffer);
 bistate->current_buf = buffer;

 return buffer;
}
