
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct timespec {long tv_sec; int tv_nsec; int member_1; int member_0; } ;
typedef int pthread_t ;
struct TYPE_3__ {int const millitm; scalar_t__ time; } ;
typedef TYPE_1__ PTW32_STRUCT_TIMEB ;
typedef int DWORD ;


 int PTW32_FTIME (TYPE_1__*) ;
 int Sleep (int) ;
 int assert (int) ;
 int func ;
 scalar_t__ pthread_create (int *,int *,int ,int *) ;
 scalar_t__ pthread_rwlock_timedrdlock (int *,struct timespec*) ;
 scalar_t__ pthread_rwlock_unlock (int *) ;
 int rwlock1 ;
 int washere ;

int
main()
{
  pthread_t t;
  struct timespec abstime = { 0, 0 };
  PTW32_STRUCT_TIMEB currSysTime;
  const DWORD NANOSEC_PER_MILLISEC = 1000000;

  PTW32_FTIME(&currSysTime);

  abstime.tv_sec = (long)currSysTime.time;
  abstime.tv_nsec = NANOSEC_PER_MILLISEC * currSysTime.millitm;

  abstime.tv_sec += 1;

  assert(pthread_rwlock_timedrdlock(&rwlock1, &abstime) == 0);

  assert(pthread_create(&t, ((void*)0), func, ((void*)0)) == 0);

  Sleep(2000);

  assert(pthread_rwlock_unlock(&rwlock1) == 0);

  assert(washere == 1);

  return 0;
}
