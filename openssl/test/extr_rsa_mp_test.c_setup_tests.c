
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADD_ALL_TESTS (int ,int) ;
 int test_rsa_mp ;

int setup_tests(void)
{

    ADD_ALL_TESTS(test_rsa_mp, 2);

    return 1;
}
