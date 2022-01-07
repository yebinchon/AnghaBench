
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_t ;
typedef int pthread_attr_t ;


 int NUMTHREADS ;
 int PTHREAD_CREATE_JOINABLE ;
 int assert (int) ;
 int func ;
 int pthread_attr_init (int *) ;
 int pthread_attr_setdetachstate (int *,int ) ;
 scalar_t__ pthread_create (int *,int *,int ,void*) ;
 scalar_t__ pthread_join (int ,void**) ;
 int washere ;

int
main()
{
  pthread_t t;
  pthread_attr_t attr;
  void * result = ((void*)0);
  int i;

  pthread_attr_init(&attr);
  pthread_attr_setdetachstate(&attr, PTHREAD_CREATE_JOINABLE);

  for (i = 0; i < NUMTHREADS; i++)
    {
      washere = 0;
      assert(pthread_create(&t, &attr, func, (void *)(size_t)1) == 0);
      assert(pthread_join(t, &result) == 0);
      assert((int)(size_t)result == 0);
      assert(washere == 1);
    }

  return 0;
}
