
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADD_ALL_TESTS (int ,int) ;
 int test_bio_enc_aes_128_cbc ;
 int test_bio_enc_aes_128_ctr ;
 int test_bio_enc_aes_256_cfb ;
 int test_bio_enc_aes_256_ofb ;
 int test_bio_enc_chacha20 ;
 int test_bio_enc_chacha20_poly1305 ;

int setup_tests(void)
{
    ADD_ALL_TESTS(test_bio_enc_aes_128_cbc, 2);
    ADD_ALL_TESTS(test_bio_enc_aes_128_ctr, 2);
    ADD_ALL_TESTS(test_bio_enc_aes_256_cfb, 2);
    ADD_ALL_TESTS(test_bio_enc_aes_256_ofb, 2);

    ADD_ALL_TESTS(test_bio_enc_chacha20, 2);

    ADD_ALL_TESTS(test_bio_enc_chacha20_poly1305, 2);


    return 1;
}
