
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ GetDurationMilliSecs (int ,int ) ;
 int PTW32_FTIME (int *) ;
 int assert (int) ;
 int currSysTimeStart ;
 int currSysTimeStop ;
 int lock ;
 scalar_t__ pthread_spin_lock (int *) ;
 scalar_t__ pthread_spin_unlock (int *) ;
 int washere ;

void * func(void * arg)
{
  PTW32_FTIME(&currSysTimeStart);
  washere = 1;
  assert(pthread_spin_lock(&lock) == 0);
  assert(pthread_spin_unlock(&lock) == 0);
  PTW32_FTIME(&currSysTimeStop);

  return (void *)(size_t)GetDurationMilliSecs(currSysTimeStart, currSysTimeStop);
}
