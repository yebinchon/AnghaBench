
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_t ;
typedef int pthread_attr_t ;
typedef int cpu_set_t ;


 int CPU_SET (int,int *) ;
 int CPU_ZERO (int *) ;
 int cpu ;
 int errno ;
 int exit (int) ;
 int iterations ;
 int null_fn ;
 int perror (char*) ;
 int pthread_attr_init (int *) ;
 int pthread_attr_setaffinity_np (int *,int,int *) ;
 int pthread_create (int *,int *,int ,int *) ;
 int pthread_join (int ,int *) ;

__attribute__((used)) static void bench_thread(void)
{
 pthread_t tid;
 cpu_set_t cpuset;
 pthread_attr_t attr;
 int rc;

 rc = pthread_attr_init(&attr);
 if (rc) {
  errno = rc;
  perror("pthread_attr_init");
  exit(1);
 }

 if (cpu != -1) {
  CPU_ZERO(&cpuset);
  CPU_SET(cpu, &cpuset);

  rc = pthread_attr_setaffinity_np(&attr, sizeof(cpu_set_t), &cpuset);
  if (rc) {
   errno = rc;
   perror("pthread_attr_setaffinity_np");
   exit(1);
  }
 }

 while (1) {
  rc = pthread_create(&tid, &attr, null_fn, ((void*)0));
  if (rc) {
   errno = rc;
   perror("pthread_create");
   exit(1);
  }
  rc = pthread_join(tid, ((void*)0));
  if (rc) {
   errno = rc;
   perror("pthread_join");
   exit(1);
  }
  iterations++;
 }
}
