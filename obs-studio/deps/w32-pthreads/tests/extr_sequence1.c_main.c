
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_t ;
typedef int pthread_attr_t ;
typedef int LPLONG ;


 int InterlockedExchangeAdd (int ,long) ;
 int NUMTHREADS ;
 int PTHREAD_CREATE_DETACHED ;
 int Sleep (int) ;
 int assert (int) ;
 int done ;
 int func ;
 scalar_t__ pthread_attr_init (int *) ;
 scalar_t__ pthread_attr_setdetachstate (int *,int ) ;
 scalar_t__ pthread_create (int *,int *,int ,int *) ;
 scalar_t__ pthread_getunique_np (int ) ;
 int pthread_self () ;
 int* seqmap ;

int
main()
{
  pthread_t t[NUMTHREADS];
  pthread_attr_t attr;
  int i;

  assert(pthread_attr_init(&attr) == 0);
  assert(pthread_attr_setdetachstate(&attr, PTHREAD_CREATE_DETACHED) == 0);

  for (i = 0; i < NUMTHREADS+2; i++)
    {
      seqmap[i] = 0;
    }

  for (i = 0; i < NUMTHREADS; i++)
    {
      if (NUMTHREADS/2 == i)
        {

          seqmap[(int)pthread_getunique_np(pthread_self())] = 1;
        }
      assert(pthread_create(&t[i], &attr, func, ((void*)0)) == 0);
    }

  while (NUMTHREADS > InterlockedExchangeAdd((LPLONG)&done, 0L))
    Sleep(100);

  Sleep(100);

  assert(seqmap[0] == 0);
  for (i = 1; i < NUMTHREADS+2; i++)
    {
      assert(seqmap[i] == 1);
    }

  return 0;
}
