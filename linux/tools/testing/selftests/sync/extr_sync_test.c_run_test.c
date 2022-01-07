
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ pid_t ;


 int WEXITSTATUS (int) ;
 scalar_t__ WIFEXITED (int) ;
 int exit (int) ;
 int fflush (int ) ;
 scalar_t__ fork () ;
 int ksft_test_result_fail (char*,char*) ;
 int ksft_test_result_pass (char*,char*) ;
 int stdout ;
 int waitpid (scalar_t__,int*,int ) ;

__attribute__((used)) static int run_test(int (*test)(void), char *name)
{
 int result;
 pid_t childpid;
 int ret;

 fflush(stdout);
 childpid = fork();

 if (childpid) {
  waitpid(childpid, &result, 0);
  if (WIFEXITED(result)) {
   ret = WEXITSTATUS(result);
   if (!ret)
    ksft_test_result_pass("[RUN]\t%s\n", name);
   else
    ksft_test_result_fail("[RUN]\t%s\n", name);
   return ret;
  }
  return 1;
 }

 exit(test());
}
