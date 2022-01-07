
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sem_t ;
typedef int pthread_t ;


 int PTHREAD_PROCESS_PRIVATE ;
 int assert (int) ;
 scalar_t__ pthread_create (int *,int *,int ,void*) ;
 scalar_t__ pthread_join (int ,int *) ;
 scalar_t__ sem_destroy (int *) ;
 scalar_t__ sem_init (int *,int ,int ) ;
 scalar_t__ sem_wait (int *) ;
 int thr ;

int
main()
{
  pthread_t t;
  sem_t s;

  assert(sem_init(&s, PTHREAD_PROCESS_PRIVATE, 0) == 0);
  assert(pthread_create(&t, ((void*)0), thr, (void *)&s) == 0);

  assert(sem_wait(&s) == 0);
  assert(sem_destroy(&s) == 0);

  assert(pthread_join(t, ((void*)0)) == 0);

  return 0;
}
