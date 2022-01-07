
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


 long EFAULT ;
 long ENOSYS ;
 size_t REG_AX ;
 int jmpbuf ;
 int n_errs ;
 int printf (char*,...) ;
 int siglongjmp (int ,int) ;

__attribute__((used)) static void sigsegv_or_sigbus(int sig, siginfo_t *info, void *ctx_void)
{
 ucontext_t *ctx = (ucontext_t*)ctx_void;
 long ax = (long)ctx->uc_mcontext.gregs[REG_AX];

 if (ax != -EFAULT && ax != -ENOSYS) {
  printf("[FAIL]\tAX had the wrong value: 0x%lx\n",
         (unsigned long)ax);
  n_errs++;
 } else {
  printf("[OK]\tSeems okay\n");
 }

 siglongjmp(jmpbuf, 1);
}
