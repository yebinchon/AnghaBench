
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* MAP_FAILED ;
 int MAP_FILE ;
 int MAP_PRIVATE ;
 int O_RDONLY ;
 int PROT_NONE ;
 int _SC_PAGESIZE ;
 int fail (char*,unsigned long,unsigned long) ;
 void* mmap (int *,unsigned int const,int ,int,int,int ) ;
 int open (char*,int ) ;
 int pass (char*,unsigned long,unsigned long) ;
 unsigned int sysconf (int ) ;

int main(void)
{
 const unsigned int PAGE_SIZE = sysconf(_SC_PAGESIZE);
 void *p;
 int fd;
 unsigned long a, b;

 fd = open("/dev/zero", O_RDONLY);
 if (fd == -1)
  return 1;

 p = mmap(((void*)0), PAGE_SIZE, PROT_NONE, MAP_PRIVATE|MAP_FILE, fd, 0);
 if (p == MAP_FAILED)
  return 1;

 a = (unsigned long)p;
 b = (unsigned long)p + PAGE_SIZE;

 pass("/proc/self/map_files/%lx-%lx", a, b);
 fail("/proc/self/map_files/ %lx-%lx", a, b);
 fail("/proc/self/map_files/%lx -%lx", a, b);
 fail("/proc/self/map_files/%lx- %lx", a, b);
 fail("/proc/self/map_files/%lx-%lx ", a, b);
 fail("/proc/self/map_files/0%lx-%lx", a, b);
 fail("/proc/self/map_files/%lx-0%lx", a, b);
 if (sizeof(long) == 4) {
  fail("/proc/self/map_files/100000000%lx-%lx", a, b);
  fail("/proc/self/map_files/%lx-100000000%lx", a, b);
 } else if (sizeof(long) == 8) {
  fail("/proc/self/map_files/10000000000000000%lx-%lx", a, b);
  fail("/proc/self/map_files/%lx-10000000000000000%lx", a, b);
 } else
  return 1;

 return 0;
}
