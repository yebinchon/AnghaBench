
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EVP_aes_128_cbc () ;
 int do_test_bio_cipher (int ,int) ;

__attribute__((used)) static int test_bio_enc_aes_128_cbc(int idx)
{
    return do_test_bio_cipher(EVP_aes_128_cbc(), idx);
}
