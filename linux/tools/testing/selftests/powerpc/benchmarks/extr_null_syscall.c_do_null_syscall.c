
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int getppid () ;

__attribute__((used)) static void do_null_syscall(unsigned long nr)
{
 unsigned long i;

 for (i = 0; i < nr; i++)
  getppid();
}
