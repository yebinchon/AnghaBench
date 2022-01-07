
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PAGE_SIZE ;
 int SIGSEGV ;
 int SIGUSR1 ;
 int clearhandler (int ) ;
 int sethandler (int ,int ,int ) ;
 int sigsegv_for_fallthrough ;
 int sigusr1 ;
 int test_sigreturn_to (unsigned long) ;
 int test_syscall_fallthrough_to (unsigned long) ;

int main()
{






 sethandler(SIGUSR1, sigusr1, 0);
 for (int i = 47; i < 64; i++)
  test_sigreturn_to(1UL<<i);

 clearhandler(SIGUSR1);

 sethandler(SIGSEGV, sigsegv_for_fallthrough, 0);


 test_syscall_fallthrough_to((1UL << 47) - 2*PAGE_SIZE);


 for (int i = 47; i < 64; i++) {
  test_syscall_fallthrough_to((1UL<<i) - PAGE_SIZE);
  test_syscall_fallthrough_to(1UL<<i);
 }

 return 0;
}
