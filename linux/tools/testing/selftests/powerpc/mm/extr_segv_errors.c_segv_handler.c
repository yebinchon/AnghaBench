
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct pt_regs* regs; } ;
struct TYPE_6__ {TYPE_1__ uc_mcontext; } ;
typedef TYPE_2__ ucontext_t ;
struct pt_regs {int nip; } ;
struct TYPE_7__ {int si_code; } ;
typedef TYPE_3__ siginfo_t ;


 int faulted ;
 int si_code ;

__attribute__((used)) static void segv_handler(int n, siginfo_t *info, void *ctxt_v)
{
 ucontext_t *ctxt = (ucontext_t *)ctxt_v;
 struct pt_regs *regs = ctxt->uc_mcontext.regs;

 faulted = 1;
 si_code = info->si_code;
 regs->nip += 4;
}
