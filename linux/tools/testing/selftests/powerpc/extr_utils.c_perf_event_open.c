
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event_attr {int dummy; } ;
typedef int pid_t ;


 int __NR_perf_event_open ;
 long syscall (int ,struct perf_event_attr*,int ,int,int,unsigned long) ;

__attribute__((used)) static long perf_event_open(struct perf_event_attr *hw_event, pid_t pid,
  int cpu, int group_fd, unsigned long flags)
{
 return syscall(__NR_perf_event_open, hw_event, pid, cpu,
        group_fd, flags);
}
