
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADD_ALL_TESTS (int ,int ) ;
 int OSSL_NELEM (int ) ;
 int test_case ;
 int test_cases ;

int setup_tests(void)
{
    ADD_ALL_TESTS(test_case, OSSL_NELEM(test_cases));
    return 1;
}
