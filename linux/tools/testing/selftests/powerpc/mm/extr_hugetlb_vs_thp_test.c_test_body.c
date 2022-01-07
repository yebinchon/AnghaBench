
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAP_ANONYMOUS ;
 char* MAP_FAILED ;
 int MAP_HUGETLB ;
 int MAP_PRIVATE ;
 int PROT_READ ;
 int PROT_WRITE ;
 int SIZE ;
 char* mmap (void*,int ,int,int,int,int ) ;
 scalar_t__ munmap (void*,int ) ;
 int perror (char*) ;
 int printf (char*,void*) ;

__attribute__((used)) static int test_body(void)
{
 void *addr;
 char *p;

 addr = (void *)0xa0000000;

 p = mmap(addr, SIZE, PROT_READ | PROT_WRITE,
   MAP_HUGETLB | MAP_ANONYMOUS | MAP_PRIVATE, -1, 0);
 if (p != MAP_FAILED) {







  if (munmap(addr, SIZE)) {
   perror("munmap");
   return 1;
  }
 }

 p = mmap(addr, SIZE, PROT_READ | PROT_WRITE,
   MAP_ANONYMOUS | MAP_PRIVATE, -1, 0);
 if (p == MAP_FAILED) {
  printf("Mapping failed @ %p\n", addr);
  perror("mmap");
  return 1;
 }
 *p = 0xf;

 munmap(addr, SIZE);

 return 0;
}
