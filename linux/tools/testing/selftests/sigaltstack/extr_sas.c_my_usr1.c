
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct stk_data {int flag; int msg; } ;
struct TYPE_3__ {scalar_t__ ss_flags; } ;
typedef TYPE_1__ stack_t ;
typedef int siginfo_t ;


 int EXIT_FAILURE ;
 unsigned long SIGSTKSZ ;
 scalar_t__ SS_DISABLE ;
 char* alloca (int) ;
 int assert (char*) ;
 int errno ;
 int exit (int ) ;
 int ksft_exit_fail_msg (char*,...) ;
 int ksft_exit_skip (char*) ;
 int ksft_print_msg (char*,...) ;
 int ksft_test_result_fail (char*,scalar_t__) ;
 int ksft_test_result_pass (char*) ;
 int msg ;
 int sc ;
 int sigaltstack (int *,TYPE_1__*) ;
 scalar_t__ sstack ;
 int strcpy (int ,int ) ;
 int strerror (int ) ;
 int swapcontext (int *,int *) ;
 int uc ;

void my_usr1(int sig, siginfo_t *si, void *u)
{
 char *aa;
 int err;
 stack_t stk;
 struct stk_data *p;




 register unsigned long sp asm("sp");


 if (sp < (unsigned long)sstack ||
   sp >= (unsigned long)sstack + SIGSTKSZ) {
  ksft_exit_fail_msg("SP is not on sigaltstack\n");
 }

 aa = alloca(1024);
 assert(aa);
 p = (struct stk_data *)(aa + 512);
 strcpy(p->msg, msg);
 p->flag = 1;
 ksft_print_msg("[RUN]\tsignal USR1\n");
 err = sigaltstack(((void*)0), &stk);
 if (err) {
  ksft_exit_fail_msg("sigaltstack() - %s\n", strerror(errno));
  exit(EXIT_FAILURE);
 }
 if (stk.ss_flags != SS_DISABLE)
  ksft_test_result_fail("tss_flags=%x, should be SS_DISABLE\n",
    stk.ss_flags);
 else
  ksft_test_result_pass(
    "sigaltstack is disabled in sighandler\n");
 swapcontext(&sc, &uc);
 ksft_print_msg("%s\n", p->msg);
 if (!p->flag) {
  ksft_exit_skip("[RUN]\tAborting\n");
  exit(EXIT_FAILURE);
 }
}
