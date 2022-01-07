
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ pid_t ;
typedef int RAND_DRBG ;


 scalar_t__ TEST_int_eq (int,scalar_t__) ;
 int TEST_int_ge (scalar_t__,int ) ;
 int TEST_true (int ) ;
 int exit (int) ;
 scalar_t__ fork () ;
 int test_drbg_reseed (int,int *,int *,int *,int,int,int,int ) ;
 int unhook_drbg (int *) ;
 int waitpid (scalar_t__,int*,int ) ;

__attribute__((used)) static int test_drbg_reseed_after_fork(RAND_DRBG *master,
                                       RAND_DRBG *public,
                                       RAND_DRBG *private)
{
    pid_t pid;
    int status=0;

    pid = fork();
    if (!TEST_int_ge(pid, 0))
        return 0;

    if (pid > 0) {

        return TEST_int_eq(waitpid(pid, &status, 0), pid) && TEST_int_eq(status, 0);
    }


    if (!TEST_true(test_drbg_reseed(1, master, public, private, 1, 1, 1, 0)))
        status = 1;


    unhook_drbg(master);
    unhook_drbg(public);
    unhook_drbg(private);
    exit(status);
}
