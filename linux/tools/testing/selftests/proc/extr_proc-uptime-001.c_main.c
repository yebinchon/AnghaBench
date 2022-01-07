
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int O_RDONLY ;
 int assert (int) ;
 int open (char*,int ) ;
 int proc_uptime (int,int*,int*) ;

int main(void)
{
 uint64_t start, u0, u1, i0, i1;
 int fd;

 fd = open("/proc/uptime", O_RDONLY);
 assert(fd >= 0);

 proc_uptime(fd, &u0, &i0);
 start = u0;
 do {
  proc_uptime(fd, &u1, &i1);
  assert(u1 >= u0);
  assert(i1 >= i0);
  u0 = u1;
  i0 = i1;
 } while (u1 - start < 100);

 return 0;
}
