
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;


 int EINVAL ;
 int O_RDONLY ;
 int assert (int) ;
 int free (unsigned long*) ;
 unsigned long* malloc (unsigned int) ;
 int memset (unsigned long*,int ,unsigned int) ;
 int open (char*,int ) ;
 int proc_uptime (int,scalar_t__*,scalar_t__*) ;
 int sys_sched_getaffinity (int ,unsigned int,unsigned long*) ;
 int sys_sched_setaffinity (int ,unsigned int,unsigned long*) ;

int main(void)
{
 unsigned int len;
 unsigned long *m;
 unsigned int cpu;
 uint64_t u0, u1, i0, i1;
 int fd;


 m = ((void*)0);
 len = 0;
 do {
  len += sizeof(unsigned long);
  free(m);
  m = malloc(len);
 } while (sys_sched_getaffinity(0, len, m) == -EINVAL);

 fd = open("/proc/uptime", O_RDONLY);
 assert(fd >= 0);

 proc_uptime(fd, &u0, &i0);
 for (cpu = 0; cpu < len * 8; cpu++) {
  memset(m, 0, len);
  m[cpu / (8 * sizeof(unsigned long))] |= 1UL << (cpu % (8 * sizeof(unsigned long)));


  sys_sched_setaffinity(0, len, m);

  proc_uptime(fd, &u1, &i1);
  assert(u1 >= u0);
  assert(i1 >= i0);
  u0 = u1;
  i0 = i1;
 }

 return 0;
}
