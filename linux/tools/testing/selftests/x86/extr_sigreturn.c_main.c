
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ss_size; int ss_sp; } ;
typedef TYPE_1__ stack_t ;


 unsigned short GDT3 (scalar_t__) ;
 int SA_ONSTACK ;
 int SIGBUS ;
 int SIGILL ;
 int SIGSEGV ;
 int SIGSTKSZ ;
 int SIGTRAP ;
 int SIGUSR1 ;
 int altstack_data ;
 int clearhandler (int ) ;
 int err (int,char*) ;
 scalar_t__ gdt_data16_idx ;
 scalar_t__ gdt_npdata32_idx ;
 unsigned short ldt_nonexistent_sel ;
 int npcode32_sel ;
 unsigned short npdata32_sel ;
 int sethandler (int ,int ,int ) ;
 int setup_ldt () ;
 int sig_corrupt_final_ss ;
 scalar_t__ sigaltstack (TYPE_1__*,int *) ;
 int sigtrap ;
 int sigusr1 ;
 int test_bad_iret (int,unsigned short,int) ;
 scalar_t__ test_nonstrict_ss () ;
 scalar_t__ test_valid_sigreturn (int,int,int) ;

int main()
{
 int total_nerrs = 0;
 unsigned short my_cs, my_ss;

 asm volatile ("mov %%cs,%0" : "=r" (my_cs));
 asm volatile ("mov %%ss,%0" : "=r" (my_ss));
 setup_ldt();

 stack_t stack = {
  .ss_sp = altstack_data,
  .ss_size = SIGSTKSZ,
 };
 if (sigaltstack(&stack, ((void*)0)) != 0)
  err(1, "sigaltstack");

 sethandler(SIGUSR1, sigusr1, 0);
 sethandler(SIGTRAP, sigtrap, SA_ONSTACK);


 total_nerrs += test_valid_sigreturn(64, 0, -1);
 total_nerrs += test_valid_sigreturn(32, 0, -1);
 total_nerrs += test_valid_sigreturn(16, 0, -1);
 total_nerrs += test_valid_sigreturn(64, 1, -1);
 total_nerrs += test_valid_sigreturn(32, 1, -1);
 total_nerrs += test_valid_sigreturn(16, 1, -1);

 if (gdt_data16_idx) {







  total_nerrs += test_valid_sigreturn(64, 1,
          GDT3(gdt_data16_idx));
  total_nerrs += test_valid_sigreturn(32, 1,
          GDT3(gdt_data16_idx));
  total_nerrs += test_valid_sigreturn(16, 1,
          GDT3(gdt_data16_idx));
 }



 sig_corrupt_final_ss = 1;
 total_nerrs += test_valid_sigreturn(32, 0, -1);
 total_nerrs += test_valid_sigreturn(32, 1, -1);
 sig_corrupt_final_ss = 0;
 clearhandler(SIGTRAP);
 sethandler(SIGSEGV, sigtrap, SA_ONSTACK);
 sethandler(SIGBUS, sigtrap, SA_ONSTACK);
 sethandler(SIGILL, sigtrap, SA_ONSTACK);


 test_bad_iret(64, ldt_nonexistent_sel, -1);
 test_bad_iret(32, ldt_nonexistent_sel, -1);
 test_bad_iret(16, ldt_nonexistent_sel, -1);


 test_bad_iret(64, my_cs, -1);
 test_bad_iret(32, my_cs, -1);
 test_bad_iret(16, my_cs, -1);


 test_bad_iret(32, my_ss, npcode32_sel);
 test_bad_iret(32, npdata32_sel, -1);







 if (gdt_npdata32_idx)
  test_bad_iret(32, GDT3(gdt_npdata32_idx), -1);


 total_nerrs += test_nonstrict_ss();


 return total_nerrs ? 1 : 0;
}
