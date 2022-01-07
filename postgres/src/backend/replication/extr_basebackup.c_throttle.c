
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TimeOffset ;


 int CHECK_FOR_INTERRUPTS () ;
 int GetCurrentTimestamp () ;
 int MyLatch ;
 int ResetLatch (int ) ;
 int WAIT_EVENT_BASE_BACKUP_THROTTLE ;
 int WL_EXIT_ON_PM_DEATH ;
 int WL_LATCH_SET ;
 int WL_TIMEOUT ;
 int WaitLatch (int ,int,long,int ) ;
 size_t elapsed_min_unit ;
 int throttled_last ;
 size_t throttling_counter ;
 size_t throttling_sample ;

__attribute__((used)) static void
throttle(size_t increment)
{
 TimeOffset elapsed_min;

 if (throttling_counter < 0)
  return;

 throttling_counter += increment;
 if (throttling_counter < throttling_sample)
  return;


 elapsed_min = elapsed_min_unit *
  (throttling_counter / throttling_sample);





 for (;;)
 {
  TimeOffset elapsed,
     sleep;
  int wait_result;


  elapsed = GetCurrentTimestamp() - throttled_last;


  sleep = elapsed_min - elapsed;
  if (sleep <= 0)
   break;

  ResetLatch(MyLatch);


  CHECK_FOR_INTERRUPTS();





  wait_result = WaitLatch(MyLatch,
        WL_LATCH_SET | WL_TIMEOUT | WL_EXIT_ON_PM_DEATH,
        (long) (sleep / 1000),
        WAIT_EVENT_BASE_BACKUP_THROTTLE);

  if (wait_result & WL_LATCH_SET)
   CHECK_FOR_INTERRUPTS();


  if (wait_result & WL_TIMEOUT)
   break;
 }





 throttling_counter %= throttling_sample;





 throttled_last = GetCurrentTimestamp();
}
