
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_VERSION ;
 int MAGIC_SKIP_RETURN_VALUE ;
 int SIGALRM ;
 int SIGINT ;
 int perror (char*) ;
 int run_test (int (*) (),char*) ;
 int sig_action ;
 scalar_t__ sigaction (int ,int *,int *) ;
 int test_error (char*) ;
 int test_finish (char*,int) ;
 int test_set_git_version (int ) ;
 int test_skip (char*) ;
 int test_start (char*) ;

int test_harness(int (test_function)(void), char *name)
{
 int rc;

 test_start(name);
 test_set_git_version(GIT_VERSION);

 if (sigaction(SIGINT, &sig_action, ((void*)0))) {
  perror("sigaction (sigint)");
  test_error(name);
  return 1;
 }

 if (sigaction(SIGALRM, &sig_action, ((void*)0))) {
  perror("sigaction (sigalrm)");
  test_error(name);
  return 1;
 }

 rc = run_test(test_function, name);

 if (rc == MAGIC_SKIP_RETURN_VALUE) {
  test_skip(name);

  rc = 0;
 } else
  test_finish(name, rc);

 return rc;
}
