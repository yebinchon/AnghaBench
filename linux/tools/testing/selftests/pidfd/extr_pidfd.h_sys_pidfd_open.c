
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 int __NR_pidfd_open ;
 int syscall (int ,int ,unsigned int) ;

__attribute__((used)) static inline int sys_pidfd_open(pid_t pid, unsigned int flags)
{
 return syscall(__NR_pidfd_open, pid, flags);
}
