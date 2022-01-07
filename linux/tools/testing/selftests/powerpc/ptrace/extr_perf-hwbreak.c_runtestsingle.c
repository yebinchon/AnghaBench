
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event_attr {int disabled; int bp_type; int bp_len; int exclude_user; scalar_t__ bp_addr; int type; } ;
typedef int attr ;
typedef scalar_t__ __u64 ;


 int DAWR_LENGTH_MAX ;
 int HW_BREAKPOINT_R ;
 int HW_BREAKPOINT_W ;
 int MAX_LOOPS ;
 int PERF_EVENT_IOC_DISABLE ;
 int PERF_EVENT_IOC_ENABLE ;
 int PERF_TYPE_BREAKPOINT ;
 int assert (int) ;
 int close (int) ;
 int exit (int) ;
 int ioctl (int,int ) ;
 int memset (struct perf_event_attr*,int ,int) ;
 int perror (char*) ;
 int printf (char*,unsigned long,unsigned long long,unsigned long long,int,int,int) ;
 int rand () ;
 size_t read (int,unsigned long long*,int) ;
 int sys_perf_event_open (struct perf_event_attr*,int ,int,int,int ) ;

__attribute__((used)) static int runtestsingle(int readwriteflag, int exclude_user, int arraytest)
{
 int i,j;
 struct perf_event_attr attr;
 size_t res;
 unsigned long long breaks, needed;
 int readint;
 int readintarraybig[2*DAWR_LENGTH_MAX/sizeof(int)];
 int *readintalign;
 volatile int *ptr;
 int break_fd;
 int loop_num = MAX_LOOPS - (rand() % 100);
 volatile int *k;


 readintalign = (int *)(((unsigned long)readintarraybig + 0x7ff) &
          0xfffffffffffff800);

 ptr = &readint;
 if (arraytest)
  ptr = &readintalign[0];


 memset(&attr, 0, sizeof(attr));
 attr.disabled = 1;
 attr.type = PERF_TYPE_BREAKPOINT;
 attr.bp_type = readwriteflag;
 attr.bp_addr = (__u64)ptr;
 attr.bp_len = sizeof(int);
 if (arraytest)
  attr.bp_len = DAWR_LENGTH_MAX;
 attr.exclude_user = exclude_user;
 break_fd = sys_perf_event_open(&attr, 0, -1, -1, 0);
 if (break_fd < 0) {
  perror("sys_perf_event_open");
  exit(1);
 }


 ioctl(break_fd, PERF_EVENT_IOC_ENABLE);


 k = &readint;
 for (i = 0; i < loop_num; i++) {
  if (arraytest)
   k = &(readintalign[i % (DAWR_LENGTH_MAX/sizeof(int))]);

  j = *k;
  *k = j;
 }


 ioctl(break_fd, PERF_EVENT_IOC_DISABLE);


 res = read(break_fd, &breaks, sizeof(unsigned long long));
 assert(res == sizeof(unsigned long long));

 needed = 0;
 if (readwriteflag & HW_BREAKPOINT_R)
  needed += loop_num;
 if (readwriteflag & HW_BREAKPOINT_W)
  needed += loop_num;
 needed = needed * (1 - exclude_user);
 printf("TESTED: addr:0x%lx brks:% 8lld loops:% 8i rw:%i !user:%i array:%i\n",
        (unsigned long int)ptr, breaks, loop_num, readwriteflag, exclude_user, arraytest);
 if (breaks != needed) {
  printf("FAILED: 0x%lx brks:%lld needed:%lli %i %i %i\n\n",
         (unsigned long int)ptr, breaks, needed, loop_num, readwriteflag, exclude_user);
  return 1;
 }
 close(break_fd);

 return 0;
}
