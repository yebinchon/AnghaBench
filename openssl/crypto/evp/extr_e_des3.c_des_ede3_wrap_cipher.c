
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_CIPHER_CTX ;


 scalar_t__ EVP_CIPHER_CTX_encrypting (int *) ;
 int EVP_F_DES_EDE3_WRAP_CIPHER ;
 size_t EVP_MAXCHUNK ;
 int EVP_R_PARTIALLY_OVERLAPPING ;
 int EVPerr (int ,int ) ;
 int des_ede3_unwrap (int *,unsigned char*,unsigned char const*,size_t) ;
 int des_ede3_wrap (int *,unsigned char*,unsigned char const*,size_t) ;
 scalar_t__ is_partially_overlapping (unsigned char*,unsigned char const*,size_t) ;

__attribute__((used)) static int des_ede3_wrap_cipher(EVP_CIPHER_CTX *ctx, unsigned char *out,
                                const unsigned char *in, size_t inl)
{





    if (inl >= EVP_MAXCHUNK || inl % 8)
        return -1;

    if (is_partially_overlapping(out, in, inl)) {
        EVPerr(EVP_F_DES_EDE3_WRAP_CIPHER, EVP_R_PARTIALLY_OVERLAPPING);
        return 0;
    }

    if (EVP_CIPHER_CTX_encrypting(ctx))
        return des_ede3_wrap(ctx, out, in, inl);
    else
        return des_ede3_unwrap(ctx, out, in, inl);
}
