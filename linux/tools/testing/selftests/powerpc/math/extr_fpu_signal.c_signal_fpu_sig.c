
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__* fp_regs; } ;
struct TYPE_3__ {TYPE_2__ uc_mcontext; } ;
typedef TYPE_1__ ucontext_t ;
typedef int siginfo_t ;
typedef TYPE_2__ mcontext_t ;


 int bad_context ;
 scalar_t__* darray ;

void signal_fpu_sig(int sig, siginfo_t *info, void *context)
{
 int i;
 ucontext_t *uc = context;
 mcontext_t *mc = &uc->uc_mcontext;


 for (i = 14; i < 32; i++) {
  if (mc->fp_regs[i] != darray[i - 14]) {
   bad_context = 1;
   break;
  }
 }
}
