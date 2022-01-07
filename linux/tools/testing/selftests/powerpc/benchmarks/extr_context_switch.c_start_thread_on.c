
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_t ;
typedef int pthread_attr_t ;
typedef int cpu_set_t ;


 int CPU_SET (unsigned long,int *) ;
 int CPU_ZERO (int *) ;
 int errno ;
 int exit (int) ;
 int perror (char*) ;
 int pthread_attr_init (int *) ;
 int pthread_attr_setaffinity_np (int *,int,int *) ;
 int pthread_create (int *,int *,void* (*) (void*),void*) ;

__attribute__((used)) static void start_thread_on(void *(*fn)(void *), void *arg, unsigned long cpu)
{
 int rc;
 pthread_t tid;
 cpu_set_t cpuset;
 pthread_attr_t attr;

 CPU_ZERO(&cpuset);
 CPU_SET(cpu, &cpuset);

 rc = pthread_attr_init(&attr);
 if (rc) {
  errno = rc;
  perror("pthread_attr_init");
  exit(1);
 }

 rc = pthread_attr_setaffinity_np(&attr, sizeof(cpu_set_t), &cpuset);
 if (rc) {
  errno = rc;
  perror("pthread_attr_setaffinity_np");
  exit(1);
 }

 rc = pthread_create(&tid, &attr, fn, arg);
 if (rc) {
  errno = rc;
  perror("pthread_create");
  exit(1);
 }
}
