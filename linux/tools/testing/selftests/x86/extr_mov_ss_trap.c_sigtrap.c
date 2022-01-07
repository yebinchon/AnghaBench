
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* gregs; } ;
struct TYPE_4__ {TYPE_1__ uc_mcontext; } ;
typedef TYPE_2__ ucontext_t ;
typedef int siginfo_t ;


 size_t REG_EFL ;
 size_t REG_IP ;
 int X86_EFLAGS_RF ;
 int printf (char*,unsigned long,int) ;

__attribute__((used)) static void sigtrap(int sig, siginfo_t *si, void *ctx_void)
{
 ucontext_t *ctx = ctx_void;

 printf("\tGot SIGTRAP with RIP=%lx, EFLAGS.RF=%d\n",
        (unsigned long)ctx->uc_mcontext.gregs[REG_IP],
        !!(ctx->uc_mcontext.gregs[REG_EFL] & X86_EFLAGS_RF));
}
