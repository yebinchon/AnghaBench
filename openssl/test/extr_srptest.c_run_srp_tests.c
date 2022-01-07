
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TEST_false (int ) ;
 int TEST_info (char*) ;
 int TEST_true (int ) ;
 int run_srp (char*,char*,char*) ;

__attribute__((used)) static int run_srp_tests(void)
{

    TEST_info("run_srp: expecting a mismatch");
    if (!TEST_false(run_srp("alice", "password1", "password2")))
        return 0;


    TEST_info("run_srp: expecting a match");
    if (!TEST_true(run_srp("alice", "password", "password")))
        return 0;

    return 1;
}
