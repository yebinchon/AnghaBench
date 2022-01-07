
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 int DSCR_2 ;
 int FAIL_IF (int ) ;
 int PPR_2 ;
 int TAR_2 ;
 int TEST_PASS ;
 int printf (char*,char*,int,int ,int ) ;
 char* ptrace_write_running ;
 int start_trace (int ) ;
 int stop_trace (int ) ;
 int write_tar_registers (int ,int,int ,int ) ;

int trace_tar_write(pid_t child)
{
 FAIL_IF(start_trace(child));
 FAIL_IF(write_tar_registers(child, TAR_2, PPR_2, DSCR_2));
 printf("%-30s TAR: %u PPR: %lx DSCR: %u\n",
   ptrace_write_running, TAR_2, PPR_2, DSCR_2);

 FAIL_IF(stop_trace(child));
 return TEST_PASS;
}
