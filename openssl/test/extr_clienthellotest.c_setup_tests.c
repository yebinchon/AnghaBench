
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADD_ALL_TESTS (int ,int ) ;
 int TEST_ptr (int ) ;
 int TOTAL_NUM_TESTS ;
 int sessionfile ;
 int test_client_hello ;
 int test_get_argument (int ) ;

int setup_tests(void)
{
    if (!TEST_ptr(sessionfile = test_get_argument(0)))
        return 0;

    ADD_ALL_TESTS(test_client_hello, TOTAL_NUM_TESTS);
    return 1;
}
