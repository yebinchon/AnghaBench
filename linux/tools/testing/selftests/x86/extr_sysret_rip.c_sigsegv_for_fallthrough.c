
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


 size_t REG_RIP ;
 int _exit (int) ;
 int fflush (int ) ;
 int jmpbuf ;
 int printf (char*,scalar_t__,unsigned long) ;
 scalar_t__ rip ;
 int siglongjmp (int ,int) ;
 int stdout ;

__attribute__((used)) static void sigsegv_for_fallthrough(int sig, siginfo_t *info, void *ctx_void)
{
 ucontext_t *ctx = (ucontext_t*)ctx_void;

 if (rip != ctx->uc_mcontext.gregs[REG_RIP]) {
  printf("[FAIL]\tExpected SIGSEGV at 0x%lx but got RIP=0x%lx\n",
         rip, (unsigned long)ctx->uc_mcontext.gregs[REG_RIP]);
  fflush(stdout);
  _exit(1);
 }

 siglongjmp(jmpbuf, 1);
}
