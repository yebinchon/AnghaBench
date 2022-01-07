
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct timespec {int dummy; } ;
struct TYPE_4__ {int* resultPtr; TYPE_2__* sem; } ;
typedef TYPE_1__ sem_timedwait_cleanup_args_t ;
typedef TYPE_2__* sem_t ;
struct TYPE_5__ {int value; scalar_t__ leftToUnblock; int lock; int sem; } ;
typedef int DWORD ;


 void* EINVAL ;
 int INFINITE ;
 int SetEvent (int ) ;
 int errno ;
 int pthreadCancelableTimedWait (int ,int ) ;
 int pthread_cleanup_pop (int) ;
 int pthread_cleanup_push (int ,void*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int pthread_testcancel () ;
 int ptw32_relmillisecs (struct timespec const*) ;
 int ptw32_sem_timedwait_cleanup ;

int
sem_timedwait (sem_t * sem, const struct timespec *abstime)
{
  int result = 0;
  sem_t s = *sem;

  pthread_testcancel();

  if (sem == ((void*)0))
    {
      result = EINVAL;
    }
  else
    {
      DWORD milliseconds;

      if (abstime == ((void*)0))
 {
   milliseconds = INFINITE;
 }
      else
 {



   milliseconds = ptw32_relmillisecs (abstime);
 }

      if ((result = pthread_mutex_lock (&s->lock)) == 0)
 {
   int v;



   if (*sem == ((void*)0))
     {
       (void) pthread_mutex_unlock (&s->lock);
       errno = EINVAL;
       return -1;
     }

   v = --s->value;
   (void) pthread_mutex_unlock (&s->lock);

   if (v < 0)
     {



       sem_timedwait_cleanup_args_t cleanup_args;

       cleanup_args.sem = s;
       cleanup_args.resultPtr = &result;





              pthread_cleanup_push(ptw32_sem_timedwait_cleanup, (void *) &cleanup_args);



       result = pthreadCancelableTimedWait (s->sem, milliseconds);
       pthread_cleanup_pop(result);
     }
 }

    }

  if (result != 0)
    {

      errno = result;
      return -1;

    }

  return 0;

}
