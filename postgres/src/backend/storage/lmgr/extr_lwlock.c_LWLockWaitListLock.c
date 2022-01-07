
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_10__ {int spin_delay_count; } ;
typedef TYPE_1__ lwlock_stats ;
struct TYPE_12__ {int state; } ;
struct TYPE_11__ {int delays; } ;
typedef TYPE_2__ SpinDelayStatus ;
typedef TYPE_3__ LWLock ;


 int LW_FLAG_LOCKED ;
 int finish_spin_delay (TYPE_2__*) ;
 TYPE_1__* get_lwlock_stats_entry (TYPE_3__*) ;
 int init_local_spin_delay (TYPE_2__*) ;
 int perform_spin_delay (TYPE_2__*) ;
 int pg_atomic_fetch_or_u32 (int *,int) ;
 int pg_atomic_read_u32 (int *) ;

__attribute__((used)) static void
LWLockWaitListLock(LWLock *lock)
{
 uint32 old_state;







 while (1)
 {

  old_state = pg_atomic_fetch_or_u32(&lock->state, LW_FLAG_LOCKED);
  if (!(old_state & LW_FLAG_LOCKED))
   break;


  {
   SpinDelayStatus delayStatus;

   init_local_spin_delay(&delayStatus);

   while (old_state & LW_FLAG_LOCKED)
   {
    perform_spin_delay(&delayStatus);
    old_state = pg_atomic_read_u32(&lock->state);
   }



   finish_spin_delay(&delayStatus);
  }





 }




}
