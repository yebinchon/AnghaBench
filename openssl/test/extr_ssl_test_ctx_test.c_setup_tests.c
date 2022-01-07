
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADD_ALL_TESTS (int ,int ) ;
 int ADD_TEST (int ) ;
 int NCONF_load (int ,int ,int *) ;
 int NCONF_new (int *) ;
 int OSSL_NELEM (int ) ;
 int TEST_int_gt (int ,int ) ;
 int TEST_ptr (int ) ;
 int bad_configurations ;
 int conf ;
 int test_bad_configuration ;
 int test_empty_configuration ;
 int test_get_argument (int ) ;
 int test_good_configuration ;

int setup_tests(void)
{
    if (!TEST_ptr(conf = NCONF_new(((void*)0))))
        return 0;

    if (!TEST_int_gt(NCONF_load(conf, test_get_argument(0), ((void*)0)), 0))
        return 0;

    ADD_TEST(test_empty_configuration);
    ADD_TEST(test_good_configuration);
    ADD_ALL_TESTS(test_bad_configuration, OSSL_NELEM(bad_configurations));
    return 1;
}
