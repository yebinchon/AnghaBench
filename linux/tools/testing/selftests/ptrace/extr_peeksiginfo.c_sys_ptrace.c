
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 int SYS_ptrace ;
 int syscall (int ,int,int ,void*,void*) ;

__attribute__((used)) static int sys_ptrace(int request, pid_t pid, void *addr, void *data)
{
 return syscall(SYS_ptrace, request, pid, addr, data);
}
