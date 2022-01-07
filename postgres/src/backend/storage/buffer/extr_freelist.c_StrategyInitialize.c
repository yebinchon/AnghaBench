
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bgwprocno; int numBufferAllocs; scalar_t__ completePasses; int nextVictimBuffer; scalar_t__ lastFreeBuffer; scalar_t__ firstFreeBuffer; int buffer_strategy_lock; } ;
typedef TYPE_1__ BufferStrategyControl ;


 int Assert (int) ;
 int InitBufTable (scalar_t__) ;
 scalar_t__ NBuffers ;
 scalar_t__ NUM_BUFFER_PARTITIONS ;
 scalar_t__ ShmemInitStruct (char*,int,int*) ;
 int SpinLockInit (int *) ;
 TYPE_1__* StrategyControl ;
 int pg_atomic_init_u32 (int *,int ) ;

void
StrategyInitialize(bool init)
{
 bool found;
 InitBufTable(NBuffers + NUM_BUFFER_PARTITIONS);




 StrategyControl = (BufferStrategyControl *)
  ShmemInitStruct("Buffer Strategy Status",
      sizeof(BufferStrategyControl),
      &found);

 if (!found)
 {



  Assert(init);

  SpinLockInit(&StrategyControl->buffer_strategy_lock);





  StrategyControl->firstFreeBuffer = 0;
  StrategyControl->lastFreeBuffer = NBuffers - 1;


  pg_atomic_init_u32(&StrategyControl->nextVictimBuffer, 0);


  StrategyControl->completePasses = 0;
  pg_atomic_init_u32(&StrategyControl->numBufferAllocs, 0);


  StrategyControl->bgwprocno = -1;
 }
 else
  Assert(!init);
}
