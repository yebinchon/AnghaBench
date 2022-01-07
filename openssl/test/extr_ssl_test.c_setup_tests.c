
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADD_ALL_TESTS (int ,int) ;
 int NCONF_get_number_e (int ,int *,char*,long*) ;
 int NCONF_load (int ,int ,int *) ;
 int NCONF_new (int *) ;
 int TEST_int_gt (int ,int ) ;
 int TEST_int_ne (int ,int ) ;
 int TEST_ptr (int ) ;
 int conf ;
 int test_get_argument (int ) ;
 int test_handshake ;

int setup_tests(void)
{
    long num_tests;

    if (!TEST_ptr(conf = NCONF_new(((void*)0)))

            || !TEST_int_gt(NCONF_load(conf, test_get_argument(0), ((void*)0)), 0)
            || !TEST_int_ne(NCONF_get_number_e(conf, ((void*)0), "num_tests",
                                               &num_tests), 0))
        return 0;

    ADD_ALL_TESTS(test_handshake, (int)num_tests);
    return 1;
}
