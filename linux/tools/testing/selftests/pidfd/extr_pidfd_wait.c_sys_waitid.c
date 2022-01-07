
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rusage {int dummy; } ;
typedef int siginfo_t ;
typedef int pid_t ;


 int __NR_waitid ;
 int syscall (int ,int,int ,int *,int,struct rusage*) ;

__attribute__((used)) static int sys_waitid(int which, pid_t pid, siginfo_t *info, int options,
        struct rusage *ru)
{
 return syscall(__NR_waitid, which, pid, info, options, ru);
}
