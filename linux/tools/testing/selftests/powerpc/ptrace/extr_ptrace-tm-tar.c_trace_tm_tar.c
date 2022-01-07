
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 int DSCR_1 ;
 int DSCR_2 ;
 unsigned long DSCR_4 ;
 int FAIL_IF (int ) ;
 int PPR_1 ;
 int PPR_2 ;
 unsigned long PPR_4 ;
 int TAR_1 ;
 int TAR_2 ;
 int TAR_4 ;
 int TEST_PASS ;
 int* pptr ;
 int printf (char*,char*,int,unsigned long,unsigned long) ;
 char* ptrace_read_ckpt ;
 char* ptrace_read_running ;
 char* ptrace_write_ckpt ;
 int show_tar_registers (int ,unsigned long*) ;
 int show_tm_checkpointed_state (int ,unsigned long*) ;
 int start_trace (int ) ;
 int stop_trace (int ) ;
 int validate_tar_registers (unsigned long*,int ,int ,int ) ;
 int write_ckpt_tar_registers (int ,int,unsigned long,unsigned long) ;

int trace_tm_tar(pid_t child)
{
 unsigned long regs[3];

 FAIL_IF(start_trace(child));
 FAIL_IF(show_tar_registers(child, regs));
 printf("%-30s TAR: %lu PPR: %lx DSCR: %lu\n",
   ptrace_read_running, regs[0], regs[1], regs[2]);

 FAIL_IF(validate_tar_registers(regs, TAR_2, PPR_2, DSCR_2));
 FAIL_IF(show_tm_checkpointed_state(child, regs));
 printf("%-30s TAR: %lu PPR: %lx DSCR: %lu\n",
   ptrace_read_ckpt, regs[0], regs[1], regs[2]);

 FAIL_IF(validate_tar_registers(regs, TAR_1, PPR_1, DSCR_1));
 FAIL_IF(write_ckpt_tar_registers(child, TAR_4, PPR_4, DSCR_4));
 printf("%-30s TAR: %u PPR: %lx DSCR: %u\n",
   ptrace_write_ckpt, TAR_4, PPR_4, DSCR_4);

 pptr[0] = 1;
 FAIL_IF(stop_trace(child));
 return TEST_PASS;
}
