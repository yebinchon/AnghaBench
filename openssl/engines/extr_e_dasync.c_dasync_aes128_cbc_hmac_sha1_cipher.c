
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_CIPHER_CTX ;


 int EVP_aes_128_cbc_hmac_sha1 () ;
 int dasync_cipher_helper (int *,unsigned char*,unsigned char const*,size_t,int ) ;

__attribute__((used)) static int dasync_aes128_cbc_hmac_sha1_cipher(EVP_CIPHER_CTX *ctx,
                                               unsigned char *out,
                                               const unsigned char *in,
                                               size_t inl)
{
    return dasync_cipher_helper(ctx, out, in, inl, EVP_aes_128_cbc_hmac_sha1());
}
