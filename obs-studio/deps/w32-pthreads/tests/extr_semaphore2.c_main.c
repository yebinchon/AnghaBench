
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sem_t ;


 int MAX_COUNT ;
 int PTHREAD_PROCESS_PRIVATE ;
 int assert (int) ;
 scalar_t__ sem_getvalue (int *,int*) ;
 scalar_t__ sem_init (int *,int ,int) ;
 scalar_t__ sem_post (int *) ;
 scalar_t__ sem_wait (int *) ;

int
main()
{
  sem_t s;
 int value = 0;
 int i;

  assert(sem_init(&s, PTHREAD_PROCESS_PRIVATE, MAX_COUNT) == 0);
 assert(sem_getvalue(&s, &value) == 0);
 assert(value == MAX_COUNT);


 for (i = MAX_COUNT - 1; i >= 0; i--)
  {
   assert(sem_wait(&s) == 0);
   assert(sem_getvalue(&s, &value) == 0);

   assert(value == i);
  }

 for (i = 1; i <= MAX_COUNT; i++)
  {
   assert(sem_post(&s) == 0);
   assert(sem_getvalue(&s, &value) == 0);

   assert(value == i);
  }

  return 0;
}
