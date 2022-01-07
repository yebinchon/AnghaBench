
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sem_t ;


 int EAGAIN ;
 int PTHREAD_PROCESS_PRIVATE ;
 int assert (int) ;
 int errno ;
 char** error_string ;
 int fflush (int ) ;
 int printf (char*,...) ;
 scalar_t__ sem_init (int *,int ,int ) ;
 int sem_post (int *) ;
 int sem_trywait (int *) ;
 int stdout ;

void *
thr(void * arg)
{
  sem_t s;
  int result;

  assert(sem_init(&s, PTHREAD_PROCESS_PRIVATE, 0) == 0);

  assert((result = sem_trywait(&s)) == -1);

  if ( result == -1 )
  {
    int err = errno;
    if (err != EAGAIN)
    {
      printf("thread: sem_trywait 1: expecting error %s: got %s\n",
      error_string[EAGAIN], error_string[err]); fflush(stdout);
    }
    assert(err == EAGAIN);
  }
  else
  {
    printf("thread: ok 1\n");
  }

  assert((result = sem_post(&s)) == 0);

  assert((result = sem_trywait(&s)) == 0);

  assert(sem_post(&s) == 0);

  return ((void*)0);
}
