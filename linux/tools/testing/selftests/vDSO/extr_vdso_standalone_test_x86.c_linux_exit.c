
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __NR_exit ;
 int x86_syscall3 (int ,int,int ,int ) ;

__attribute__((used)) static inline void linux_exit(int code)
{
 x86_syscall3(__NR_exit, code, 0, 0);
}
