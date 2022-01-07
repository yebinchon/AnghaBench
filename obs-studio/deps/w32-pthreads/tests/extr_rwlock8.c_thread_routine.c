
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int seed; int changed; scalar_t__ thread_num; int reads; int updates; } ;
typedef TYPE_1__ thread_t ;
struct TYPE_4__ {scalar_t__ data; int lock; int updates; } ;


 int DATASIZE ;
 int ITERATIONS ;
 int assert (int) ;
 TYPE_2__* data ;
 int fflush (int ) ;
 scalar_t__ pthread_rwlock_rdlock (int *) ;
 scalar_t__ pthread_rwlock_unlock (int *) ;
 scalar_t__ pthread_rwlock_wrlock (int *) ;
 int putchar (char) ;
 int rand_r (int*) ;
 int sched_yield () ;
 int stdout ;

void *thread_routine (void *arg)
{
  thread_t *self = (thread_t*)arg;
  int iteration;
  int element = 0;
  int seed = self->seed;
  int interval = 1 + rand_r (&seed) % 71;

  self->changed = 0;

  for (iteration = 0; iteration < ITERATIONS; iteration++)
    {
      if (iteration % (ITERATIONS / 10) == 0)
        {
          putchar('.');
          fflush(stdout);
        }





      if ((iteration % interval) == 0)
        {
          assert(pthread_rwlock_wrlock (&data[element].lock) == 0);
          data[element].data = self->thread_num;
          data[element].updates++;
          self->updates++;
   interval = 1 + rand_r (&seed) % 71;
   sched_yield();
          assert(pthread_rwlock_unlock (&data[element].lock) == 0);
        } else {





          assert(pthread_rwlock_rdlock (&data[element].lock) == 0);

          self->reads++;

          if (data[element].data != self->thread_num)
            {
              self->changed++;
       interval = 1 + self->changed % 71;
            }

   sched_yield();

          assert(pthread_rwlock_unlock (&data[element].lock) == 0);
        }

      element = (element + 1) % DATASIZE;

    }

  return ((void*)0);
}
