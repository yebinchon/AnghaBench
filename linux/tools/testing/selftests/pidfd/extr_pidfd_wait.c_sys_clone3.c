
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clone_args {int dummy; } ;
typedef int pid_t ;


 int __NR_clone3 ;
 int syscall (int ,struct clone_args*,int) ;

__attribute__((used)) static pid_t sys_clone3(struct clone_args *args)
{
 return syscall(__NR_clone3, args, sizeof(struct clone_args));
}
