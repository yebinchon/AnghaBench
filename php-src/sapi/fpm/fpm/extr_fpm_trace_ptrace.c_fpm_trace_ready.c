
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 int traced_pid ;

int fpm_trace_ready(pid_t pid)
{
 traced_pid = pid;
 return 0;
}
