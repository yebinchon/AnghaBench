
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADD_ALL_TESTS (int ,int ) ;
 int TEST_ptr (int ) ;
 int TOTAL_RECORD_OVERFLOW_TESTS ;
 int cert ;
 int privkey ;
 int test_get_argument (int) ;
 int test_record_overflow ;

int setup_tests(void)
{
    if (!TEST_ptr(cert = test_get_argument(0))
            || !TEST_ptr(privkey = test_get_argument(1)))
        return 0;

    ADD_ALL_TESTS(test_record_overflow, TOTAL_RECORD_OVERFLOW_TESTS);
    return 1;
}
