
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int x; int * p; } ;
typedef TYPE_1__ pthread_t ;
typedef int pthread_attr_t ;
typedef int LPLONG ;


 int InterlockedExchangeAdd (int ,long) ;
 int NUMTHREADS ;
 int PTHREAD_CREATE_DETACHED ;
 int Sleep (int) ;
 int assert (int) ;
 int done ;
 int func ;
 int printf (char*,unsigned int) ;
 scalar_t__ pthread_attr_init (int *) ;
 scalar_t__ pthread_attr_setdetachstate (int *,int ) ;
 scalar_t__ pthread_create (TYPE_1__*,int *,int ,int *) ;

int
main()
{
  pthread_t t[NUMTHREADS];
  pthread_attr_t attr;
  int i;
  unsigned int notUnique = 0,
        totalHandles = 0,
        reuseMax = 0,
        reuseMin = NUMTHREADS;

  assert(pthread_attr_init(&attr) == 0);
  assert(pthread_attr_setdetachstate(&attr, PTHREAD_CREATE_DETACHED) == 0);

  for (i = 0; i < NUMTHREADS; i++)
    {
      while(pthread_create(&t[i], &attr, func, ((void*)0)) != 0)
        Sleep(1);
    }

  while (NUMTHREADS > InterlockedExchangeAdd((LPLONG)&done, 0L))
    Sleep(100);

  Sleep(100);





  for (i = 0; i < NUMTHREADS; i++)
    {
      if (t[i].p != ((void*)0))
        {
          unsigned int j, thisMax;

          thisMax = t[i].x;

          for (j = i+1; j < NUMTHREADS; j++)
            if (t[i].p == t[j].p)
              {
  if (t[i].x == t[j].x)
    notUnique++;
                if (thisMax < t[j].x)
                  thisMax = t[j].x;
                t[j].p = ((void*)0);
              }

          if (reuseMin > thisMax)
            reuseMin = thisMax;

          if (reuseMax < thisMax)
            reuseMax = thisMax;
        }
    }

  for (i = 0; i < NUMTHREADS; i++)
    if (t[i].p != ((void*)0))
      totalHandles++;





  printf("For %d total threads:\n", NUMTHREADS);
  printf("Non-unique IDs = %d\n", notUnique);
  printf("Reuse maximum  = %d\n", reuseMax + 1);
  printf("Reuse minimum  = %d\n", reuseMin + 1);
  printf("Total handles  = %d\n", totalHandles);

  return 0;
}
