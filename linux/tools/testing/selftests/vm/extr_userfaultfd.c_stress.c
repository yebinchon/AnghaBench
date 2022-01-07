
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int pthread_t ;
struct TYPE_2__ {scalar_t__ (* release_pages ) (int ) ;} ;


 int BOUNCE_POLL ;
 int area_src ;
 int attr ;
 int background_thread ;
 int bounces ;
 int finished ;
 int fprintf (int ,char*) ;
 int locking_thread ;
 int nr_cpus ;
 int * pipefd ;
 scalar_t__ pthread_cancel (int ) ;
 scalar_t__ pthread_create (int *,int *,int ,void*) ;
 scalar_t__ pthread_join (int ,void**) ;
 int pthread_mutex_lock (int *) ;
 int stderr ;
 scalar_t__ stub1 (int ) ;
 int uffd_poll_thread ;
 int uffd_read_mutex ;
 int uffd_read_thread ;
 TYPE_1__* uffd_test_ops ;
 int write (int ,char*,int) ;

__attribute__((used)) static int stress(unsigned long *userfaults)
{
 unsigned long cpu;
 pthread_t locking_threads[nr_cpus];
 pthread_t uffd_threads[nr_cpus];
 pthread_t background_threads[nr_cpus];
 void **_userfaults = (void **) userfaults;

 finished = 0;
 for (cpu = 0; cpu < nr_cpus; cpu++) {
  if (pthread_create(&locking_threads[cpu], &attr,
       locking_thread, (void *)cpu))
   return 1;
  if (bounces & BOUNCE_POLL) {
   if (pthread_create(&uffd_threads[cpu], &attr,
        uffd_poll_thread, (void *)cpu))
    return 1;
  } else {
   if (pthread_create(&uffd_threads[cpu], &attr,
        uffd_read_thread,
        &_userfaults[cpu]))
    return 1;
   pthread_mutex_lock(&uffd_read_mutex);
  }
  if (pthread_create(&background_threads[cpu], &attr,
       background_thread, (void *)cpu))
   return 1;
 }
 for (cpu = 0; cpu < nr_cpus; cpu++)
  if (pthread_join(background_threads[cpu], ((void*)0)))
   return 1;
 if (uffd_test_ops->release_pages(area_src))
  return 1;


 finished = 1;
 for (cpu = 0; cpu < nr_cpus; cpu++)
  if (pthread_join(locking_threads[cpu], ((void*)0)))
   return 1;

 for (cpu = 0; cpu < nr_cpus; cpu++) {
  char c;
  if (bounces & BOUNCE_POLL) {
   if (write(pipefd[cpu*2+1], &c, 1) != 1) {
    fprintf(stderr, "pipefd write error\n");
    return 1;
   }
   if (pthread_join(uffd_threads[cpu], &_userfaults[cpu]))
    return 1;
  } else {
   if (pthread_cancel(uffd_threads[cpu]))
    return 1;
   if (pthread_join(uffd_threads[cpu], ((void*)0)))
    return 1;
  }
 }

 return 0;
}
