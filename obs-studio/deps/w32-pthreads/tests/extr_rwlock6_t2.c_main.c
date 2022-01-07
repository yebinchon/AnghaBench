
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int pthread_t ;
struct TYPE_5__ {long tv_sec; int tv_nsec; } ;
struct TYPE_4__ {int const millitm; scalar_t__ time; } ;
typedef TYPE_1__ PTW32_STRUCT_TIMEB ;
typedef int DWORD ;


 int PTW32_FTIME (TYPE_1__*) ;
 int Sleep (int) ;
 TYPE_2__ abstime ;
 int assert (int) ;
 scalar_t__ bankAccount ;
 scalar_t__ pthread_create (int *,int *,int ,void*) ;
 scalar_t__ pthread_join (int ,void**) ;
 int rdfunc ;
 int wrfunc ;

int
main()
{
  pthread_t wrt1;
  pthread_t wrt2;
  pthread_t rdt;
  void* wr1Result = (void*)0;
  void* wr2Result = (void*)0;
  void* rdResult = (void*)0;
  PTW32_STRUCT_TIMEB currSysTime;
  const DWORD NANOSEC_PER_MILLISEC = 1000000;

  PTW32_FTIME(&currSysTime);

  abstime.tv_sec = (long)currSysTime.time;
  abstime.tv_nsec = NANOSEC_PER_MILLISEC * currSysTime.millitm;

  abstime.tv_sec += 1;

  bankAccount = 0;

  assert(pthread_create(&wrt1, ((void*)0), wrfunc, (void *)(size_t)1) == 0);
  Sleep(100);
  assert(pthread_create(&rdt, ((void*)0), rdfunc, ((void*)0)) == 0);
  Sleep(100);
  assert(pthread_create(&wrt2, ((void*)0), wrfunc, (void *)(size_t)2) == 0);

  assert(pthread_join(wrt1, &wr1Result) == 0);
  assert(pthread_join(rdt, &rdResult) == 0);
  assert(pthread_join(wrt2, &wr2Result) == 0);

  assert((int)(size_t)wr1Result == 10);
  assert((int)(size_t)rdResult == 0);
  assert((int)(size_t)wr2Result == 100);

  return 0;
}
