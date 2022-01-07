
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stk_data {scalar_t__ flag; int msg; } ;
typedef int siginfo_t ;


 char* alloca (int) ;
 int ksft_print_msg (char*) ;
 int ksft_test_result_fail (char*) ;
 struct stk_data* memmem (char*,int,int ,int ) ;
 int msg ;
 int msg2 ;
 int strcpy (int ,int ) ;
 int strlen (int ) ;

void my_usr2(int sig, siginfo_t *si, void *u)
{
 char *aa;
 struct stk_data *p;

 ksft_print_msg("[RUN]\tsignal USR2\n");
 aa = alloca(1024);


 p = memmem(aa, 1024, msg, strlen(msg));
 if (p) {
  ksft_test_result_fail("sigaltstack re-used\n");

  strcpy(p->msg, msg2);

  p->flag = 0;
 }
}
