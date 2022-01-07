
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SYS_exit ;
 int syscall (int ,int ) ;

void _start(void)
{
 syscall(SYS_exit, 0);
}
