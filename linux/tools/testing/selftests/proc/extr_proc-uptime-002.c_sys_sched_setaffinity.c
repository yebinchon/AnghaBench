
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 int SYS_sched_setaffinity ;
 int syscall (int ,int ,unsigned int,unsigned long*) ;

__attribute__((used)) static inline int sys_sched_setaffinity(pid_t pid, unsigned int len, unsigned long *m)
{
 return syscall(SYS_sched_setaffinity, pid, len, m);
}
