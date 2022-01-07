
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADD_ALL_TESTS (int ,int) ;
 int ADD_TEST (int ) ;
 int OSSL_NELEM (int ) ;
 int RAND_DRBG_get_ex_new_index (long,int *,int *,int *,int *) ;
 int app_data_index ;
 int crngt_num_cases ;
 int drbg_test ;
 int drgb_types ;
 int test_crngt ;
 int test_error_checks ;
 int test_kats ;
 int test_multi_set ;
 int test_multi_thread ;
 int test_rand_add ;
 int test_rand_drbg_prediction_resistance ;
 int test_rand_drbg_reseed ;
 int test_rand_seed ;
 int test_set_defaults ;

int setup_tests(void)
{
    app_data_index = RAND_DRBG_get_ex_new_index(0L, ((void*)0), ((void*)0), ((void*)0), ((void*)0));

    ADD_ALL_TESTS(test_kats, OSSL_NELEM(drbg_test));
    ADD_ALL_TESTS(test_error_checks, OSSL_NELEM(drbg_test));
    ADD_TEST(test_rand_drbg_reseed);
    ADD_TEST(test_rand_seed);
    ADD_TEST(test_rand_add);
    ADD_TEST(test_rand_drbg_prediction_resistance);
    ADD_TEST(test_multi_set);
    ADD_TEST(test_set_defaults);



    ADD_ALL_TESTS(test_crngt, crngt_num_cases * OSSL_NELEM(drgb_types));
    return 1;
}
