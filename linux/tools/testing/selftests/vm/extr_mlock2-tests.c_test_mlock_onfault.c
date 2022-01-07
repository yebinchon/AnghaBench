
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ENOSYS ;
 int KSFT_SKIP ;
 int MAP_ANONYMOUS ;
 char* MAP_FAILED ;
 int MAP_PRIVATE ;
 int MLOCK_ONFAULT ;
 int PROT_READ ;
 int PROT_WRITE ;
 int _exit (int ) ;
 scalar_t__ errno ;
 unsigned long getpagesize () ;
 scalar_t__ mlock2_ (char*,int,int ) ;
 char* mmap (int *,int,int,int,int,int ) ;
 scalar_t__ munlock (char*,int) ;
 int munmap (char*,int) ;
 scalar_t__ onfault_check (char*) ;
 int perror (char*) ;
 int printf (char*) ;
 int unlock_onfault_check (char*) ;

__attribute__((used)) static int test_mlock_onfault()
{
 char *map;
 int ret = 1;
 unsigned long page_size = getpagesize();

 map = mmap(((void*)0), 2 * page_size, PROT_READ | PROT_WRITE,
     MAP_ANONYMOUS | MAP_PRIVATE, -1, 0);
 if (map == MAP_FAILED) {
  perror("test_mlock_locked mmap");
  goto out;
 }

 if (mlock2_(map, 2 * page_size, MLOCK_ONFAULT)) {
  if (errno == ENOSYS) {
   printf("Cannot call new mlock family, skipping test\n");
   _exit(KSFT_SKIP);
  }
  perror("mlock2(MLOCK_ONFAULT)");
  goto unmap;
 }

 if (onfault_check(map))
  goto unmap;


 if (munlock(map, 2 * page_size)) {
  if (errno == ENOSYS) {
   printf("Cannot call new mlock family, skipping test\n");
   _exit(KSFT_SKIP);
  }
  perror("munlock()");
  goto unmap;
 }

 ret = unlock_onfault_check(map);
unmap:
 munmap(map, 2 * page_size);
out:
 return ret;
}
