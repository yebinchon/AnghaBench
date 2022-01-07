
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_2__ {int buffer_strategy_lock; int completePasses; int nextVictimBuffer; } ;


 int NBuffers ;
 int SpinLockAcquire (int *) ;
 int SpinLockRelease (int *) ;
 TYPE_1__* StrategyControl ;
 int pg_atomic_compare_exchange_u32 (int *,int*,int) ;
 int pg_atomic_fetch_add_u32 (int *,int) ;

__attribute__((used)) static inline uint32
ClockSweepTick(void)
{
 uint32 victim;






 victim =
  pg_atomic_fetch_add_u32(&StrategyControl->nextVictimBuffer, 1);

 if (victim >= NBuffers)
 {
  uint32 originalVictim = victim;


  victim = victim % NBuffers;







  if (victim == 0)
  {
   uint32 expected;
   uint32 wrapped;
   bool success = 0;

   expected = originalVictim + 1;

   while (!success)
   {
    SpinLockAcquire(&StrategyControl->buffer_strategy_lock);

    wrapped = expected % NBuffers;

    success = pg_atomic_compare_exchange_u32(&StrategyControl->nextVictimBuffer,
               &expected, wrapped);
    if (success)
     StrategyControl->completePasses++;
    SpinLockRelease(&StrategyControl->buffer_strategy_lock);
   }
  }
 }
 return victim;
}
