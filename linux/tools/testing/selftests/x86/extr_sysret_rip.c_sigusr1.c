
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__* gregs; } ;
struct TYPE_4__ {TYPE_1__ uc_mcontext; } ;
typedef TYPE_2__ ucontext_t ;
typedef int siginfo_t ;
typedef int gregset_t ;


 size_t REG_EFL ;
 size_t REG_R11 ;
 size_t REG_RCX ;
 size_t REG_RIP ;
 int SA_RESETHAND ;
 int SIGSEGV ;
 int assert (int) ;
 int initial_regs ;
 int memcpy (int *,scalar_t__**,int) ;
 void* rip ;
 int sethandler (int ,int ,int ) ;
 int sigsegv_for_sigreturn_test ;

__attribute__((used)) static void sigusr1(int sig, siginfo_t *info, void *ctx_void)
{
 ucontext_t *ctx = (ucontext_t*)ctx_void;

 memcpy(&initial_regs, &ctx->uc_mcontext.gregs, sizeof(gregset_t));


 ctx->uc_mcontext.gregs[REG_RIP] = rip;
 ctx->uc_mcontext.gregs[REG_RCX] = rip;


 assert(ctx->uc_mcontext.gregs[REG_EFL] ==
        ctx->uc_mcontext.gregs[REG_R11]);

 sethandler(SIGSEGV, sigsegv_for_sigreturn_test, SA_RESETHAND);

 return;
}
