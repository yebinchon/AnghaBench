
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADD_ALL_TESTS (int ,int) ;
 int ADD_TEST (int ) ;
 int NUM_TESTS ;
 int test_des_cbc ;
 int test_des_cbc_cksum ;
 int test_des_cfb16 ;
 int test_des_cfb32 ;
 int test_des_cfb48 ;
 int test_des_cfb64 ;
 int test_des_cfb8 ;
 int test_des_crypt ;
 int test_des_ecb ;
 int test_des_ede_cbc ;
 int test_des_ede_cfb64 ;
 int test_des_ede_ecb ;
 int test_des_ede_ofb64 ;
 int test_des_ofb ;
 int test_des_ofb64 ;
 int test_des_pcbc ;
 int test_des_quad_cksum ;
 int test_ede_cbc ;
 int test_input_align ;
 int test_output_align ;

int setup_tests(void)
{

    ADD_ALL_TESTS(test_des_ecb, NUM_TESTS);
    ADD_TEST(test_des_cbc);
    ADD_TEST(test_ede_cbc);
    ADD_ALL_TESTS(test_des_ede_ecb, NUM_TESTS - 2);
    ADD_TEST(test_des_ede_cbc);
    ADD_TEST(test_des_pcbc);
    ADD_TEST(test_des_cfb8);
    ADD_TEST(test_des_cfb16);
    ADD_TEST(test_des_cfb32);
    ADD_TEST(test_des_cfb48);
    ADD_TEST(test_des_cfb64);
    ADD_TEST(test_des_ede_cfb64);
    ADD_TEST(test_des_ofb);
    ADD_TEST(test_des_ofb64);
    ADD_TEST(test_des_ede_ofb64);
    ADD_TEST(test_des_cbc_cksum);
    ADD_TEST(test_des_quad_cksum);
    ADD_TEST(test_des_crypt);
    ADD_ALL_TESTS(test_input_align, 4);
    ADD_ALL_TESTS(test_output_align, 4);

    return 1;
}
