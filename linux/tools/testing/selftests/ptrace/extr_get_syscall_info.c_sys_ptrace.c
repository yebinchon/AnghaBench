
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 int __NR_ptrace ;
 long syscall (int ,int,int ,unsigned long,unsigned long) ;

__attribute__((used)) static long
sys_ptrace(int request, pid_t pid, unsigned long addr, unsigned long data)
{
 return syscall(__NR_ptrace, request, pid, addr, data);
}
