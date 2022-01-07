
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_CIPHER_CTX ;
typedef int DES_cblock ;


 int DES_cfb_encrypt (unsigned char const*,unsigned char*,int,long,int ,int *,int ) ;
 int EVP_CIPHER_CTX_encrypting (int *) ;
 int EVP_CIPHER_CTX_get_cipher_data (int *) ;
 scalar_t__ EVP_CIPHER_CTX_iv_noconst (int *) ;
 size_t EVP_MAXCHUNK ;

__attribute__((used)) static int des_cfb8_cipher(EVP_CIPHER_CTX *ctx, unsigned char *out,
                           const unsigned char *in, size_t inl)
{
    while (inl >= EVP_MAXCHUNK) {
        DES_cfb_encrypt(in, out, 8, (long)EVP_MAXCHUNK,
                        EVP_CIPHER_CTX_get_cipher_data(ctx),
                        (DES_cblock *)EVP_CIPHER_CTX_iv_noconst(ctx),
                        EVP_CIPHER_CTX_encrypting(ctx));
        inl -= EVP_MAXCHUNK;
        in += EVP_MAXCHUNK;
        out += EVP_MAXCHUNK;
    }
    if (inl)
        DES_cfb_encrypt(in, out, 8, (long)inl,
                        EVP_CIPHER_CTX_get_cipher_data(ctx),
                        (DES_cblock *)EVP_CIPHER_CTX_iv_noconst(ctx),
                        EVP_CIPHER_CTX_encrypting(ctx));
    return 1;
}
