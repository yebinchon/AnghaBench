
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 int close (int) ;
 int mem_file ;

int fpm_trace_close(pid_t pid)
{
 close(mem_file);
 mem_file = -1;
 return 0;
}
