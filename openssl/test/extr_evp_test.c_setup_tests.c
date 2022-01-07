
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADD_ALL_TESTS (int ,size_t) ;
 int run_file_tests ;
 size_t test_get_argument_count () ;

int setup_tests(void)
{
    size_t n = test_get_argument_count();

    if (n == 0)
        return 0;

    ADD_ALL_TESTS(run_file_tests, n);
    return 1;
}
