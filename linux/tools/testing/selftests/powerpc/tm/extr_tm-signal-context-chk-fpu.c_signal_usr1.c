
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__* fp_regs; } ;
struct TYPE_4__ {TYPE_1__ uc_mcontext; struct TYPE_4__* uc_link; } ;
typedef TYPE_2__ ucontext_t ;
typedef int siginfo_t ;


 int FPR14 ;
 int NV_FPU_REGS ;
 int broken ;
 int fail ;
 scalar_t__* fps ;
 int printf (char*,int,scalar_t__,scalar_t__) ;

__attribute__((used)) static void signal_usr1(int signum, siginfo_t *info, void *uc)
{
 int i;
 ucontext_t *ucp = uc;
 ucontext_t *tm_ucp = ucp->uc_link;

 for (i = 0; i < NV_FPU_REGS; i++) {

  fail = (ucp->uc_mcontext.fp_regs[FPR14 + i] != fps[i]);
  if (fail) {
   broken = 1;
   printf("FPR%d (1st context) == %g instead of %g (expected)\n",
    FPR14 + i, ucp->uc_mcontext.fp_regs[FPR14 + i], fps[i]);
  }
 }

 for (i = 0; i < NV_FPU_REGS; i++) {

  fail = (tm_ucp->uc_mcontext.fp_regs[FPR14 + i] != fps[NV_FPU_REGS + i]);
  if (fail) {
   broken = 1;
   printf("FPR%d (2nd context) == %g instead of %g (expected)\n",
    FPR14 + i, tm_ucp->uc_mcontext.fp_regs[FPR14 + i], fps[NV_FPU_REGS + i]);
  }
 }
}
