
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long BASE_ADDRESS ;
 unsigned long MAP_ANONYMOUS ;
 char* MAP_FAILED ;
 unsigned long MAP_FIXED_NOREPLACE ;
 unsigned long MAP_PRIVATE ;
 int PROT_NONE ;
 int _SC_PAGE_SIZE ;
 int dump_maps () ;
 scalar_t__ errno ;
 char* mmap (void*,unsigned long,int ,unsigned long,int,int ) ;
 scalar_t__ munmap (void*,unsigned long) ;
 int printf (char*,...) ;
 unsigned long sysconf (int ) ;

int main(void)
{
 unsigned long flags, addr, size, page_size;
 char *p;

 page_size = sysconf(_SC_PAGE_SIZE);

 flags = MAP_PRIVATE | MAP_ANONYMOUS | MAP_FIXED_NOREPLACE;


 errno = 0;
 addr = BASE_ADDRESS;
 size = 5 * page_size;
 p = mmap((void *)addr, size, PROT_NONE, flags, -1, 0);

 printf("mmap() @ 0x%lx-0x%lx p=%p result=%m\n", addr, addr + size, p);

 if (p == MAP_FAILED) {
  dump_maps();
  printf("Error: couldn't map the space we need for the test\n");
  return 1;
 }

 errno = 0;
 if (munmap((void *)addr, 5 * page_size) != 0) {
  dump_maps();
  printf("Error: munmap failed!?\n");
  return 1;
 }
 printf("unmap() successful\n");

 errno = 0;
 addr = BASE_ADDRESS + page_size;
 size = 3 * page_size;
 p = mmap((void *)addr, size, PROT_NONE, flags, -1, 0);
 printf("mmap() @ 0x%lx-0x%lx p=%p result=%m\n", addr, addr + size, p);

 if (p == MAP_FAILED) {
  dump_maps();
  printf("Error: first mmap() failed unexpectedly\n");
  return 1;
 }
 errno = 0;
 addr = BASE_ADDRESS;
 size = 5 * page_size;
 p = mmap((void *)addr, size, PROT_NONE, flags, -1, 0);
 printf("mmap() @ 0x%lx-0x%lx p=%p result=%m\n", addr, addr + size, p);

 if (p != MAP_FAILED) {
  dump_maps();
  printf("Error:1: mmap() succeeded when it shouldn't have\n");
  return 1;
 }
 errno = 0;
 addr = BASE_ADDRESS + (2 * page_size);
 size = page_size;
 p = mmap((void *)addr, size, PROT_NONE, flags, -1, 0);
 printf("mmap() @ 0x%lx-0x%lx p=%p result=%m\n", addr, addr + size, p);

 if (p != MAP_FAILED) {
  dump_maps();
  printf("Error:2: mmap() succeeded when it shouldn't have\n");
  return 1;
 }
 errno = 0;
 addr = BASE_ADDRESS + (3 * page_size);
 size = 2 * page_size;
 p = mmap((void *)addr, size, PROT_NONE, flags, -1, 0);
 printf("mmap() @ 0x%lx-0x%lx p=%p result=%m\n", addr, addr + size, p);

 if (p != MAP_FAILED) {
  dump_maps();
  printf("Error:3: mmap() succeeded when it shouldn't have\n");
  return 1;
 }
 errno = 0;
 addr = BASE_ADDRESS;
 size = 2 * page_size;
 p = mmap((void *)addr, size, PROT_NONE, flags, -1, 0);
 printf("mmap() @ 0x%lx-0x%lx p=%p result=%m\n", addr, addr + size, p);

 if (p != MAP_FAILED) {
  dump_maps();
  printf("Error:4: mmap() succeeded when it shouldn't have\n");
  return 1;
 }
 errno = 0;
 addr = BASE_ADDRESS;
 size = page_size;
 p = mmap((void *)addr, size, PROT_NONE, flags, -1, 0);
 printf("mmap() @ 0x%lx-0x%lx p=%p result=%m\n", addr, addr + size, p);

 if (p == MAP_FAILED) {
  dump_maps();
  printf("Error:5: mmap() failed when it shouldn't have\n");
  return 1;
 }
 errno = 0;
 addr = BASE_ADDRESS + (4 * page_size);
 size = page_size;
 p = mmap((void *)addr, size, PROT_NONE, flags, -1, 0);
 printf("mmap() @ 0x%lx-0x%lx p=%p result=%m\n", addr, addr + size, p);

 if (p == MAP_FAILED) {
  dump_maps();
  printf("Error:6: mmap() failed when it shouldn't have\n");
  return 1;
 }

 addr = BASE_ADDRESS;
 size = 5 * page_size;
 if (munmap((void *)addr, size) != 0) {
  dump_maps();
  printf("Error: munmap failed!?\n");
  return 1;
 }
 printf("unmap() successful\n");

 printf("OK\n");
 return 0;
}
