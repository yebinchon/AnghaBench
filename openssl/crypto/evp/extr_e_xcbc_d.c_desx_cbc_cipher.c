
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int outw; int inw; int ks; } ;
typedef int EVP_CIPHER_CTX ;
typedef int DES_cblock ;


 int DES_xcbc_encrypt (unsigned char const*,unsigned char*,long,int *,int *,int *,int *,int ) ;
 int EVP_CIPHER_CTX_encrypting (int *) ;
 scalar_t__ EVP_CIPHER_CTX_iv_noconst (int *) ;
 size_t EVP_MAXCHUNK ;
 TYPE_1__* data (int *) ;

__attribute__((used)) static int desx_cbc_cipher(EVP_CIPHER_CTX *ctx, unsigned char *out,
                           const unsigned char *in, size_t inl)
{
    while (inl >= EVP_MAXCHUNK) {
        DES_xcbc_encrypt(in, out, (long)EVP_MAXCHUNK, &data(ctx)->ks,
                         (DES_cblock *)EVP_CIPHER_CTX_iv_noconst(ctx),
                         &data(ctx)->inw, &data(ctx)->outw,
                         EVP_CIPHER_CTX_encrypting(ctx));
        inl -= EVP_MAXCHUNK;
        in += EVP_MAXCHUNK;
        out += EVP_MAXCHUNK;
    }
    if (inl)
        DES_xcbc_encrypt(in, out, (long)inl, &data(ctx)->ks,
                         (DES_cblock *)EVP_CIPHER_CTX_iv_noconst(ctx),
                         &data(ctx)->inw, &data(ctx)->outw,
                         EVP_CIPHER_CTX_encrypting(ctx));
    return 1;
}
