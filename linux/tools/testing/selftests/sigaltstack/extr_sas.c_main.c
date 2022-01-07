
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct sigaction {int sa_flags; int sa_sigaction; int sa_mask; } ;
struct TYPE_9__ {int ss_flags; void* ss_size; scalar_t__ ss_sp; } ;
typedef TYPE_2__ stack_t ;
struct TYPE_8__ {void* ss_size; scalar_t__ ss_sp; } ;
struct TYPE_10__ {TYPE_1__ uc_stack; int * uc_link; } ;


 scalar_t__ EINVAL ;
 int EXIT_FAILURE ;
 int MAP_ANONYMOUS ;
 scalar_t__ MAP_FAILED ;
 int MAP_PRIVATE ;
 int MAP_STACK ;
 int PROT_READ ;
 int PROT_WRITE ;
 int SA_ONSTACK ;
 int SA_SIGINFO ;
 void* SIGSTKSZ ;
 int SIGUSR1 ;
 int SIGUSR2 ;
 int SS_AUTODISARM ;
 int SS_DISABLE ;
 int SS_ONSTACK ;
 scalar_t__ errno ;
 int exit (int) ;
 int getcontext (TYPE_3__*) ;
 int ksft_exit_fail_msg (char*,int) ;
 int ksft_exit_pass () ;
 int ksft_exit_skip (char*) ;
 int ksft_print_header () ;
 int ksft_set_plan (int) ;
 int ksft_test_result_pass (char*) ;
 int makecontext (TYPE_3__*,int ,int ) ;
 scalar_t__ mmap (int *,void*,int,int,int,int ) ;
 int my_usr1 ;
 int my_usr2 ;
 int raise (int ) ;
 int sigaction (int ,struct sigaction*,int *) ;
 int sigaltstack (TYPE_2__*,TYPE_2__*) ;
 int sigemptyset (int *) ;
 scalar_t__ sstack ;
 int strerror (scalar_t__) ;
 int switch_fn ;
 TYPE_3__ uc ;
 scalar_t__ ustack ;

int main(void)
{
 struct sigaction act;
 stack_t stk;
 int err;

 ksft_print_header();
 ksft_set_plan(3);

 sigemptyset(&act.sa_mask);
 act.sa_flags = SA_ONSTACK | SA_SIGINFO;
 act.sa_sigaction = my_usr1;
 sigaction(SIGUSR1, &act, ((void*)0));
 act.sa_sigaction = my_usr2;
 sigaction(SIGUSR2, &act, ((void*)0));
 sstack = mmap(((void*)0), SIGSTKSZ, PROT_READ | PROT_WRITE,
        MAP_PRIVATE | MAP_ANONYMOUS | MAP_STACK, -1, 0);
 if (sstack == MAP_FAILED) {
  ksft_exit_fail_msg("mmap() - %s\n", strerror(errno));
  return EXIT_FAILURE;
 }

 err = sigaltstack(((void*)0), &stk);
 if (err) {
  ksft_exit_fail_msg("sigaltstack() - %s\n", strerror(errno));
  exit(EXIT_FAILURE);
 }
 if (stk.ss_flags == SS_DISABLE) {
  ksft_test_result_pass(
    "Initial sigaltstack state was SS_DISABLE\n");
 } else {
  ksft_exit_fail_msg("Initial sigaltstack state was %x; "
         "should have been SS_DISABLE\n", stk.ss_flags);
  return EXIT_FAILURE;
 }

 stk.ss_sp = sstack;
 stk.ss_size = SIGSTKSZ;
 stk.ss_flags = SS_ONSTACK | SS_AUTODISARM;
 err = sigaltstack(&stk, ((void*)0));
 if (err) {
  if (errno == EINVAL) {
   ksft_exit_skip(
    "[NOTE]\tThe running kernel doesn't support SS_AUTODISARM\n");






   return 0;
  } else {
   ksft_exit_fail_msg(
    "sigaltstack(SS_ONSTACK | SS_AUTODISARM)  %s\n",
     strerror(errno));
   return EXIT_FAILURE;
  }
 }

 ustack = mmap(((void*)0), SIGSTKSZ, PROT_READ | PROT_WRITE,
        MAP_PRIVATE | MAP_ANONYMOUS | MAP_STACK, -1, 0);
 if (ustack == MAP_FAILED) {
  ksft_exit_fail_msg("mmap() - %s\n", strerror(errno));
  return EXIT_FAILURE;
 }
 getcontext(&uc);
 uc.uc_link = ((void*)0);
 uc.uc_stack.ss_sp = ustack;
 uc.uc_stack.ss_size = SIGSTKSZ;
 makecontext(&uc, switch_fn, 0);
 raise(SIGUSR1);

 err = sigaltstack(((void*)0), &stk);
 if (err) {
  ksft_exit_fail_msg("sigaltstack() - %s\n", strerror(errno));
  exit(EXIT_FAILURE);
 }
 if (stk.ss_flags != SS_AUTODISARM) {
  ksft_exit_fail_msg("ss_flags=%x, should be SS_AUTODISARM\n",
    stk.ss_flags);
  exit(EXIT_FAILURE);
 }
 ksft_test_result_pass(
   "sigaltstack is still SS_AUTODISARM after signal\n");

 ksft_exit_pass();
 return 0;
}
