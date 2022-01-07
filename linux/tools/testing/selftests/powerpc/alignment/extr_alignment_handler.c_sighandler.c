
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int* gp_regs; TYPE_1__* uc_regs; } ;
struct TYPE_6__ {TYPE_2__ uc_mcontext; } ;
typedef TYPE_3__ ucontext_t ;
typedef int siginfo_t ;
struct TYPE_4__ {int* gregs; } ;


 size_t PT_NIP ;
 int SIG_DFL ;
 int gotsig ;
 int kill (int ,int) ;
 int signal (int,int ) ;
 int testing ;

void sighandler(int sig, siginfo_t *info, void *ctx)
{
 ucontext_t *ucp = ctx;

 if (!testing) {
  signal(sig, SIG_DFL);
  kill(0, sig);
 }
 gotsig = sig;



 ucp->uc_mcontext.uc_regs->gregs[PT_NIP] += 4;

}
