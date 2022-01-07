
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* regs; } ;
struct TYPE_6__ {TYPE_2__ uc_mcontext; } ;
typedef TYPE_3__ ucontext_t ;
typedef int siginfo_t ;
struct TYPE_4__ {int nip; } ;



void trap_signal_handler(int signo, siginfo_t *si, void *uc)
{
 ucontext_t *ucp = (ucontext_t *) uc;

 asm("tbegin.; tsuspend.;");


 ucp->uc_mcontext.regs->nip += 4;
}
