
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {unsigned long long* gp_regs; TYPE_1__* uc_regs; } ;
struct TYPE_6__ {TYPE_2__ uc_mcontext; struct TYPE_6__* uc_link; } ;
typedef TYPE_3__ ucontext_t ;
typedef int siginfo_t ;
struct TYPE_4__ {unsigned long long* gregs; } ;


 size_t PT_MSR ;
 int segv_expected ;

void signal_usr1(int signum, siginfo_t *info, void *uc)
{
 ucontext_t *ucp = uc;


 ucp->uc_link = ucp;




 ucp->uc_mcontext.uc_regs->gregs[PT_MSR] |= (7ULL);


 segv_expected = 1;
}
