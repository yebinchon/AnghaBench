
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ss_size; int ss_sp; } ;
typedef TYPE_1__ stack_t ;


 int SA_ONSTACK ;
 int SIGBUS ;
 int SIGILL ;
 int SIGSEGV ;
 int SIGSTKSZ ;
 int SIGTRAP ;
 int X86_EFLAGS_TF ;
 int altstack_data ;
 int err (int,char*) ;
 int get_eflags () ;
 int jmpbuf ;
 int printf (char*) ;
 int set_eflags (int) ;
 int sethandler (int ,int ,int ) ;
 scalar_t__ sigaltstack (TYPE_1__*,int *) ;
 int sigill ;
 int sigsegv_or_sigbus ;
 scalar_t__ sigsetjmp (int ,int) ;
 int sigtrap ;
 scalar_t__ sigtrap_consecutive_syscalls ;

int main()
{
 stack_t stack = {
  .ss_sp = altstack_data,
  .ss_size = SIGSTKSZ,
 };
 if (sigaltstack(&stack, ((void*)0)) != 0)
  err(1, "sigaltstack");

 sethandler(SIGSEGV, sigsegv_or_sigbus, SA_ONSTACK);





 sethandler(SIGBUS, sigsegv_or_sigbus, SA_ONSTACK);
 sethandler(SIGILL, sigill, SA_ONSTACK);
 printf("[RUN]\tSYSENTER with invalid state\n");
 if (sigsetjmp(jmpbuf, 1) == 0) {
  asm volatile (
   "movl $-1, %%eax\n\t"
   "movl $-1, %%ebx\n\t"
   "movl $-1, %%ecx\n\t"
   "movl $-1, %%edx\n\t"
   "movl $-1, %%esi\n\t"
   "movl $-1, %%edi\n\t"
   "movl $-1, %%ebp\n\t"
   "movl $-1, %%esp\n\t"
   "sysenter"
   : : : "memory", "flags");
 }

 printf("[RUN]\tSYSCALL with invalid state\n");
 if (sigsetjmp(jmpbuf, 1) == 0) {
  asm volatile (
   "movl $-1, %%eax\n\t"
   "movl $-1, %%ebx\n\t"
   "movl $-1, %%ecx\n\t"
   "movl $-1, %%edx\n\t"
   "movl $-1, %%esi\n\t"
   "movl $-1, %%edi\n\t"
   "movl $-1, %%ebp\n\t"
   "movl $-1, %%esp\n\t"
   "syscall\n\t"
   "ud2"
   : : : "memory", "flags");
 }

 printf("[RUN]\tSYSENTER with TF and invalid state\n");
 sethandler(SIGTRAP, sigtrap, SA_ONSTACK);

 if (sigsetjmp(jmpbuf, 1) == 0) {
  sigtrap_consecutive_syscalls = 0;
  set_eflags(get_eflags() | X86_EFLAGS_TF);
  asm volatile (
   "movl $-1, %%eax\n\t"
   "movl $-1, %%ebx\n\t"
   "movl $-1, %%ecx\n\t"
   "movl $-1, %%edx\n\t"
   "movl $-1, %%esi\n\t"
   "movl $-1, %%edi\n\t"
   "movl $-1, %%ebp\n\t"
   "movl $-1, %%esp\n\t"
   "sysenter"
   : : : "memory", "flags");
 }
 set_eflags(get_eflags() & ~X86_EFLAGS_TF);

 printf("[RUN]\tSYSCALL with TF and invalid state\n");
 if (sigsetjmp(jmpbuf, 1) == 0) {
  sigtrap_consecutive_syscalls = 0;
  set_eflags(get_eflags() | X86_EFLAGS_TF);
  asm volatile (
   "movl $-1, %%eax\n\t"
   "movl $-1, %%ebx\n\t"
   "movl $-1, %%ecx\n\t"
   "movl $-1, %%edx\n\t"
   "movl $-1, %%esi\n\t"
   "movl $-1, %%edi\n\t"
   "movl $-1, %%ebp\n\t"
   "movl $-1, %%esp\n\t"
   "syscall\n\t"
   "ud2"
   : : : "memory", "flags");
 }
 set_eflags(get_eflags() & ~X86_EFLAGS_TF);

 return 0;
}
