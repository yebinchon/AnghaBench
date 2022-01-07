
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADD_ALL_TESTS (int ,int ) ;
 int ADD_TEST (int ) ;
 int OSSL_NELEM (int ) ;
 int day_of_week_tests ;
 int test_days ;
 int test_x509_cmp_time ;
 int test_x509_cmp_time_current ;
 int test_x509_time ;
 int test_x509_time_print ;
 int x509_cmp_tests ;
 int x509_format_tests ;
 int x509_print_tests ;

int setup_tests(void)
{
    ADD_TEST(test_x509_cmp_time_current);
    ADD_ALL_TESTS(test_x509_cmp_time, OSSL_NELEM(x509_cmp_tests));
    ADD_ALL_TESTS(test_x509_time, OSSL_NELEM(x509_format_tests));
    ADD_ALL_TESTS(test_days, OSSL_NELEM(day_of_week_tests));
    ADD_ALL_TESTS(test_x509_time_print, OSSL_NELEM(x509_print_tests));
    return 1;
}
