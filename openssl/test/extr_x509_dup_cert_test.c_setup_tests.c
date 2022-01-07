
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADD_ALL_TESTS (int ,size_t) ;
 int TEST_int_gt (size_t,int ) ;
 int test_509_dup_cert ;
 size_t test_get_argument_count () ;

int setup_tests(void)
{
    size_t n = test_get_argument_count();

    if (!TEST_int_gt(n, 0))
        return 0;

    ADD_ALL_TESTS(test_509_dup_cert, n);
    return 1;
}
