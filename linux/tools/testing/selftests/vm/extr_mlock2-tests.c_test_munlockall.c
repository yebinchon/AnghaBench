
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAP_ANONYMOUS ;
 char* MAP_FAILED ;
 int MAP_PRIVATE ;
 int MCL_CURRENT ;
 int MCL_FUTURE ;
 int MCL_ONFAULT ;
 int PROT_READ ;
 int PROT_WRITE ;
 unsigned long getpagesize () ;
 scalar_t__ lock_check (char*) ;
 scalar_t__ mlockall (int) ;
 char* mmap (int *,int,int,int,int,int ) ;
 scalar_t__ munlockall () ;
 int munmap (char*,int) ;
 scalar_t__ onfault_check (char*) ;
 int perror (char*) ;
 int unlock_lock_check (char*) ;
 scalar_t__ unlock_onfault_check (char*) ;

__attribute__((used)) static int test_munlockall()
{
 char *map;
 int ret = 1;
 unsigned long page_size = getpagesize();

 map = mmap(((void*)0), 2 * page_size, PROT_READ | PROT_WRITE,
     MAP_ANONYMOUS | MAP_PRIVATE, -1, 0);

 if (map == MAP_FAILED) {
  perror("test_munlockall mmap");
  goto out;
 }

 if (mlockall(MCL_CURRENT)) {
  perror("mlockall(MCL_CURRENT)");
  goto out;
 }

 if (lock_check(map))
  goto unmap;

 if (munlockall()) {
  perror("munlockall()");
  goto unmap;
 }

 if (unlock_lock_check(map))
  goto unmap;

 munmap(map, 2 * page_size);

 map = mmap(((void*)0), 2 * page_size, PROT_READ | PROT_WRITE,
     MAP_ANONYMOUS | MAP_PRIVATE, -1, 0);

 if (map == MAP_FAILED) {
  perror("test_munlockall second mmap");
  goto out;
 }

 if (mlockall(MCL_CURRENT | MCL_ONFAULT)) {
  perror("mlockall(MCL_CURRENT | MCL_ONFAULT)");
  goto unmap;
 }

 if (onfault_check(map))
  goto unmap;

 if (munlockall()) {
  perror("munlockall()");
  goto unmap;
 }

 if (unlock_onfault_check(map))
  goto unmap;

 if (mlockall(MCL_CURRENT | MCL_FUTURE)) {
  perror("mlockall(MCL_CURRENT | MCL_FUTURE)");
  goto out;
 }

 if (lock_check(map))
  goto unmap;

 if (munlockall()) {
  perror("munlockall()");
  goto unmap;
 }

 ret = unlock_lock_check(map);

unmap:
 munmap(map, 2 * page_size);
out:
 munlockall();
 return ret;
}
