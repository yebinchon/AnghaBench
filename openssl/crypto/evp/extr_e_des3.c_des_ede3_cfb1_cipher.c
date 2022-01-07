
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ks3; int ks2; int ks1; } ;
typedef int EVP_CIPHER_CTX ;
typedef int DES_cblock ;


 int DES_ede3_cfb_encrypt (unsigned char*,unsigned char*,int,int,int *,int *,int *,int *,int ) ;
 int EVP_CIPHER_CTX_encrypting (int *) ;
 scalar_t__ EVP_CIPHER_CTX_iv_noconst (int *) ;
 int EVP_CIPHER_CTX_test_flags (int *,int ) ;
 int EVP_CIPH_FLAG_LENGTH_BITS ;
 TYPE_1__* data (int *) ;

__attribute__((used)) static int des_ede3_cfb1_cipher(EVP_CIPHER_CTX *ctx, unsigned char *out,
                                const unsigned char *in, size_t inl)
{
    size_t n;
    unsigned char c[1], d[1];

    if (!EVP_CIPHER_CTX_test_flags(ctx, EVP_CIPH_FLAG_LENGTH_BITS))
            inl *= 8;
    for (n = 0; n < inl; ++n) {
        c[0] = (in[n / 8] & (1 << (7 - n % 8))) ? 0x80 : 0;
        DES_ede3_cfb_encrypt(c, d, 1, 1,
                             &data(ctx)->ks1, &data(ctx)->ks2,
                             &data(ctx)->ks3,
                             (DES_cblock *)EVP_CIPHER_CTX_iv_noconst(ctx),
                             EVP_CIPHER_CTX_encrypting(ctx));
        out[n / 8] = (out[n / 8] & ~(0x80 >> (unsigned int)(n % 8)))
            | ((d[0] & 0x80) >> (unsigned int)(n % 8));
    }

    return 1;
}
