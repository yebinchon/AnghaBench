
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rlimit {int rlim_max; } ;


 int MAP_ANONYMOUS ;
 void* MAP_FAILED ;
 int MAP_POPULATE ;
 int MAP_PRIVATE ;
 int MCL_FUTURE ;
 int MCL_ONFAULT ;
 int PROT_READ ;
 int PROT_WRITE ;
 int RLIMIT_MEMLOCK ;
 scalar_t__ getrlimit (int ,struct rlimit*) ;
 scalar_t__ mlockall (int) ;
 void* mmap (int *,int,int,int,int,int ) ;
 int munlockall () ;
 int munmap (void*,int) ;
 int perror (char*) ;
 int printf (char*) ;

__attribute__((used)) static int test_limit(void)
{
 int ret = 1;
 struct rlimit lims;
 void *map;

 if (getrlimit(RLIMIT_MEMLOCK, &lims)) {
  perror("getrlimit");
  return ret;
 }

 if (mlockall(MCL_ONFAULT | MCL_FUTURE)) {
  perror("mlockall");
  return ret;
 }

 map = mmap(((void*)0), 2 * lims.rlim_max, PROT_READ | PROT_WRITE,
     MAP_PRIVATE | MAP_ANONYMOUS | MAP_POPULATE, -1, 0);
 if (map != MAP_FAILED)
  printf("mmap should have failed, but didn't\n");
 else {
  ret = 0;
  munmap(map, 2 * lims.rlim_max);
 }

 munlockall();
 return ret;
}
