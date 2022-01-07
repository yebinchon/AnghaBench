
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 int SYS_getpid ;
 int syscall (int ) ;

__attribute__((used)) static inline pid_t sys_getpid(void)
{
 return syscall(SYS_getpid);
}
