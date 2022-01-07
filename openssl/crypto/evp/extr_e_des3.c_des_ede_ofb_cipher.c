
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ks3; int ks2; int ks1; } ;
typedef int EVP_CIPHER_CTX ;
typedef int DES_cblock ;


 int DES_ede3_ofb64_encrypt (unsigned char const*,unsigned char*,long,int *,int *,int *,int *,int*) ;
 scalar_t__ EVP_CIPHER_CTX_iv_noconst (int *) ;
 int EVP_CIPHER_CTX_num (int *) ;
 int EVP_CIPHER_CTX_set_num (int *,int) ;
 size_t EVP_MAXCHUNK ;
 TYPE_1__* data (int *) ;

__attribute__((used)) static int des_ede_ofb_cipher(EVP_CIPHER_CTX *ctx, unsigned char *out,
                              const unsigned char *in, size_t inl)
{
    while (inl >= EVP_MAXCHUNK) {
        int num = EVP_CIPHER_CTX_num(ctx);
        DES_ede3_ofb64_encrypt(in, out, (long)EVP_MAXCHUNK,
                               &data(ctx)->ks1, &data(ctx)->ks2,
                               &data(ctx)->ks3,
                               (DES_cblock *)EVP_CIPHER_CTX_iv_noconst(ctx),
                               &num);
        EVP_CIPHER_CTX_set_num(ctx, num);
        inl -= EVP_MAXCHUNK;
        in += EVP_MAXCHUNK;
        out += EVP_MAXCHUNK;
    }
    if (inl) {
        int num = EVP_CIPHER_CTX_num(ctx);
        DES_ede3_ofb64_encrypt(in, out, (long)inl,
                               &data(ctx)->ks1, &data(ctx)->ks2,
                               &data(ctx)->ks3,
                               (DES_cblock *)EVP_CIPHER_CTX_iv_noconst(ctx),
                               &num);
        EVP_CIPHER_CTX_set_num(ctx, num);
    }
    return 1;
}
