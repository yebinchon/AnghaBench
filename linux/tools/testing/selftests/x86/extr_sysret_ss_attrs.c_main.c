
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_t ;
typedef int cpuset ;
typedef int cpu_set_t ;


 int CPU_SET (int ,int *) ;
 int CPU_ZERO (int *) ;
 int MAP_32BIT ;
 int MAP_ANONYMOUS ;
 unsigned char* MAP_FAILED ;
 int MAP_PRIVATE ;
 int PROT_READ ;
 int PROT_WRITE ;
 int call32_from_64 (unsigned char*,int ) ;
 int err (int,char*) ;
 unsigned char* mmap (int *,int,int,int,int,int ) ;
 int munmap (unsigned char*,int) ;
 int printf (char*) ;
 scalar_t__ pthread_create (int *,int ,int ,int ) ;
 scalar_t__ sched_setaffinity (int ,int,int *) ;
 int test_ss ;
 int threadproc ;
 int usleep (int) ;

int main()
{





 cpu_set_t cpuset;
 CPU_ZERO(&cpuset);
 CPU_SET(0, &cpuset);
 if (sched_setaffinity(0, sizeof(cpuset), &cpuset) != 0)
  printf("[WARN]\tsched_setaffinity failed\n");

 pthread_t thread;
 if (pthread_create(&thread, 0, threadproc, 0) != 0)
  err(1, "pthread_create");


 unsigned char *stack32 = mmap(((void*)0), 4096, PROT_READ | PROT_WRITE,
          MAP_32BIT | MAP_ANONYMOUS | MAP_PRIVATE,
          -1, 0);
 if (stack32 == MAP_FAILED)
  err(1, "mmap");


 printf("[RUN]\tSyscalls followed by SS validation\n");

 for (int i = 0; i < 1000; i++) {
  usleep(2);







  call32_from_64(stack32 + 4088, test_ss);

 }

 printf("[OK]\tWe survived\n");


 munmap(stack32, 4096);


 return 0;
}
