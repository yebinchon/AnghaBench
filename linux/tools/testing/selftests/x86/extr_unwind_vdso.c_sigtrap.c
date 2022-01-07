
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned long* gregs; } ;
struct TYPE_4__ {TYPE_1__ uc_mcontext; } ;
typedef TYPE_2__ ucontext_t ;
struct unwind_state {unsigned long ip; int depth; } ;
typedef int siginfo_t ;


 size_t REG_EFL ;
 size_t REG_EIP ;
 size_t REG_ESP ;
 unsigned long X86_EFLAGS_TF ;
 int _Unwind_Backtrace (int ,struct unwind_state*) ;
 int got_sysinfo ;
 int printf (char*,...) ;
 unsigned long return_address ;
 unsigned long sysinfo ;
 int trace_fn ;

__attribute__((used)) static void sigtrap(int sig, siginfo_t *info, void *ctx_void)
{
 ucontext_t *ctx = (ucontext_t *)ctx_void;
 struct unwind_state state;
 unsigned long ip = ctx->uc_mcontext.gregs[REG_EIP];

 if (!got_sysinfo && ip == sysinfo) {
  got_sysinfo = 1;


  return_address = *(unsigned long *)(unsigned long)ctx->uc_mcontext.gregs[REG_ESP];

  printf("\tIn vsyscall at 0x%lx, returning to 0x%lx\n",
         ip, return_address);
 }

 if (!got_sysinfo)
  return;

 if (ip == return_address) {
  ctx->uc_mcontext.gregs[REG_EFL] &= ~X86_EFLAGS_TF;
  printf("\tVsyscall is done\n");
  return;
 }

 printf("\tSIGTRAP at 0x%lx\n", ip);

 state.ip = ip;
 state.depth = -1;
 _Unwind_Backtrace(trace_fn, &state);
}
