
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADD_ALL_TESTS (int ,int ) ;
 int ADD_TEST (int ) ;
 int OSSL_NELEM (int *) ;
 int * data_len ;
 int test_rc4_encrypt ;
 int test_rc4_end_processing ;
 int test_rc4_multi_call ;
 int test_rc_bulk ;

int setup_tests(void)
{

    ADD_ALL_TESTS(test_rc4_encrypt, OSSL_NELEM(data_len));
    ADD_ALL_TESTS(test_rc4_end_processing, data_len[3]);
    ADD_ALL_TESTS(test_rc4_multi_call, data_len[3]);
    ADD_TEST(test_rc_bulk);

    return 1;
}
