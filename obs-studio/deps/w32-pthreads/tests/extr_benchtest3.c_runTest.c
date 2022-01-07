
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_t ;


 scalar_t__ GetDurationMilliSecs (int ,int ) ;
 float ITERATIONS ;
 int assert (int) ;
 int currSysTimeStart ;
 int currSysTimeStop ;
 scalar_t__ durationMilliSecs ;
 int ma ;
 int mx ;
 scalar_t__ overHeadMilliSecs ;
 int printf (char*,char*,scalar_t__,float) ;
 scalar_t__ pthread_create (int *,int *,int ,int ) ;
 scalar_t__ pthread_join (int ,int *) ;
 scalar_t__ pthread_mutex_destroy (int *) ;
 scalar_t__ pthread_mutex_init (int *,int *) ;
 scalar_t__ pthread_mutex_lock (int *) ;
 scalar_t__ pthread_mutex_unlock (int *) ;
 int pthread_mutexattr_settype (int *,int) ;
 int trylockThread ;

void
runTest (char * testNameString, int mType)
{
  pthread_t t;




  assert(pthread_mutex_init(&mx, &ma) == 0);
  assert(pthread_mutex_lock(&mx) == 0);
  assert(pthread_create(&t, ((void*)0), trylockThread, 0) == 0);
  assert(pthread_join(t, ((void*)0)) == 0);
  assert(pthread_mutex_unlock(&mx) == 0);
  assert(pthread_mutex_destroy(&mx) == 0);

  durationMilliSecs = GetDurationMilliSecs(currSysTimeStart, currSysTimeStop) - overHeadMilliSecs;

  printf( "%-45s %15ld %15.3f\n",
     testNameString,
          durationMilliSecs,
          (float) durationMilliSecs * 1E3 / ITERATIONS);
}
