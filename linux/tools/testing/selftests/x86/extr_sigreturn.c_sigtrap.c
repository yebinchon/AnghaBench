
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__* gregs; } ;
struct TYPE_6__ {int uc_flags; TYPE_1__ uc_mcontext; } ;
typedef TYPE_2__ ucontext_t ;
typedef int siginfo_t ;
typedef int gregset_t ;
typedef scalar_t__ greg_t ;


 size_t REG_CX ;
 size_t REG_ERR ;
 size_t REG_TRAPNO ;
 int SIGTRAP ;
 int UC_STRICT_RESTORE_SS ;
 scalar_t__* initial_regs ;
 int memcpy (scalar_t__**,scalar_t__**,int) ;
 int nerrs ;
 int printf (char*,...) ;
 scalar_t__* resulting_regs ;
 scalar_t__ sig_corrupt_final_ss ;
 scalar_t__ sig_err ;
 scalar_t__ sig_ss ;
 scalar_t__ sig_trapno ;
 int sig_trapped ;
 scalar_t__* ssptr (TYPE_2__*) ;
 int validate_signal_ss (int,TYPE_2__*) ;

__attribute__((used)) static void sigtrap(int sig, siginfo_t *info, void *ctx_void)
{
 ucontext_t *ctx = (ucontext_t*)ctx_void;

 validate_signal_ss(sig, ctx);

 sig_err = ctx->uc_mcontext.gregs[REG_ERR];
 sig_trapno = ctx->uc_mcontext.gregs[REG_TRAPNO];

 unsigned short ss;
 asm ("mov %%ss,%0" : "=r" (ss));

 greg_t asm_ss = ctx->uc_mcontext.gregs[REG_CX];
 if (asm_ss != sig_ss && sig == SIGTRAP) {

  printf("[FAIL]\tSIGTRAP: ss = %hx, frame ss = %hx, ax = %llx\n",
         ss, *ssptr(ctx), (unsigned long long)asm_ss);
  nerrs++;
 }

 memcpy(&resulting_regs, &ctx->uc_mcontext.gregs, sizeof(gregset_t));
 memcpy(&ctx->uc_mcontext.gregs, &initial_regs, sizeof(gregset_t));


 if (sig_corrupt_final_ss) {
  if (ctx->uc_flags & UC_STRICT_RESTORE_SS) {
   printf("[FAIL]\tUC_STRICT_RESTORE_SS was set inappropriately\n");
   nerrs++;
  } else {





   printf("\tCorrupting SS on return to 64-bit mode\n");
   *ssptr(ctx) = 0;
  }
 }


 sig_trapped = sig;
}
