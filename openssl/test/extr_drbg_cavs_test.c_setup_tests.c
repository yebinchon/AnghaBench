
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADD_ALL_TESTS (int ,int ) ;
 int RAND_DRBG_get_ex_new_index (long,int *,int *,int *,int *) ;
 int app_data_index ;
 int drbg_ctr_nelem ;
 int drbg_hash_nelem ;
 int drbg_hmac_nelem ;
 int test_cavs_ctr ;
 int test_cavs_hash ;
 int test_cavs_hmac ;

int setup_tests(void)
{
    app_data_index = RAND_DRBG_get_ex_new_index(0L, ((void*)0), ((void*)0), ((void*)0), ((void*)0));

    ADD_ALL_TESTS(test_cavs_ctr, drbg_ctr_nelem);
    ADD_ALL_TESTS(test_cavs_hmac, drbg_hmac_nelem);
    ADD_ALL_TESTS(test_cavs_hash, drbg_hash_nelem);

    return 1;
}
