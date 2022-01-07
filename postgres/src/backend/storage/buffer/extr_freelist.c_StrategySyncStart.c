
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_2__ {int completePasses; int buffer_strategy_lock; int numBufferAllocs; int nextVictimBuffer; } ;


 int NBuffers ;
 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;
 TYPE_1__* StrategyControl ;
 int pg_atomic_exchange_u32 (int *,int ) ;
 int pg_atomic_read_u32 (int *) ;

int
StrategySyncStart(uint32 *complete_passes, uint32 *num_buf_alloc)
{
 uint32 nextVictimBuffer;
 int result;

 SpinLockAcquire(&StrategyControl->buffer_strategy_lock);
 nextVictimBuffer = pg_atomic_read_u32(&StrategyControl->nextVictimBuffer);
 result = nextVictimBuffer % NBuffers;

 if (complete_passes)
 {
  *complete_passes = StrategyControl->completePasses;





  *complete_passes += nextVictimBuffer / NBuffers;
 }

 if (num_buf_alloc)
 {
  *num_buf_alloc = pg_atomic_exchange_u32(&StrategyControl->numBufferAllocs, 0);
 }
 SpinLockRelease(&StrategyControl->buffer_strategy_lock);
 return result;
}
