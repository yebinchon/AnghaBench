
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int siginfo_t ;
typedef int pid_t ;


 int SYS_rt_sigqueueinfo ;
 int syscall (int ,int ,int,int *) ;

__attribute__((used)) static int sys_rt_sigqueueinfo(pid_t tgid, int sig, siginfo_t *uinfo)
{
 return syscall(SYS_rt_sigqueueinfo, tgid, sig, uinfo);
}
