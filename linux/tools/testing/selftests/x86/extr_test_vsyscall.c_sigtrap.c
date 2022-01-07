
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned long* gregs; } ;
struct TYPE_4__ {TYPE_1__ uc_mcontext; } ;
typedef TYPE_2__ ucontext_t ;
typedef int siginfo_t ;


 size_t REG_RIP ;
 int num_vsyscall_traps ;

__attribute__((used)) static void sigtrap(int sig, siginfo_t *info, void *ctx_void)
{
 ucontext_t *ctx = (ucontext_t *)ctx_void;
 unsigned long ip = ctx->uc_mcontext.gregs[REG_RIP];

 if (((ip ^ 0xffffffffff600000UL) & ~0xfffUL) == 0)
  num_vsyscall_traps++;
}
