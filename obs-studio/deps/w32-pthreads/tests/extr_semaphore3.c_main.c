
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_t ;


 int MAX_COUNT ;
 int PTHREAD_PROCESS_PRIVATE ;
 int assert (int) ;
 scalar_t__ pthread_create (int *,int *,int ,int *) ;
 int s ;
 int sched_yield () ;
 scalar_t__ sem_getvalue (int *,int*) ;
 scalar_t__ sem_init (int *,int ,int ) ;
 scalar_t__ sem_post (int *) ;
 int thr ;

int
main()
{
 int value = 0;
 int i;
 pthread_t t[MAX_COUNT+1];

 assert(sem_init(&s, PTHREAD_PROCESS_PRIVATE, 0) == 0);
 assert(sem_getvalue(&s, &value) == 0);

 assert(value == 0);

 for (i = 1; i <= MAX_COUNT; i++)
  {
   assert(pthread_create(&t[i], ((void*)0), thr, ((void*)0)) == 0);
   do {
     sched_yield();
     assert(sem_getvalue(&s, &value) == 0);
   } while (value != -i);

   assert(-value == i);
  }

 for (i = MAX_COUNT - 1; i >= 0; i--)
  {
   assert(sem_post(&s) == 0);
   assert(sem_getvalue(&s, &value) == 0);

   assert(-value == i);
  }

  return 0;
}
