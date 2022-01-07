
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int flags; int enc; scalar_t__ iv; } ;
struct TYPE_4__ {int ks3; int ks2; int ks1; } ;
typedef TYPE_1__ PROV_TDES_CTX ;
typedef TYPE_2__ PROV_CIPHER_CTX ;
typedef int DES_cblock ;


 int DES_ede3_cfb_encrypt (unsigned char*,unsigned char*,int,int,int *,int *,int *,int *,int ) ;
 int EVP_CIPH_FLAG_LENGTH_BITS ;

__attribute__((used)) static int cipher_hw_tdes_cfb1(PROV_CIPHER_CTX *ctx, unsigned char *out,
                               const unsigned char *in, size_t inl)
{
    PROV_TDES_CTX *tctx = (PROV_TDES_CTX *)ctx;
    size_t n;
    unsigned char c[1], d[1];

    if ((ctx->flags & EVP_CIPH_FLAG_LENGTH_BITS) == 0)
        inl *= 8;
    for (n = 0; n < inl; ++n) {
        c[0] = (in[n / 8] & (1 << (7 - n % 8))) ? 0x80 : 0;
        DES_ede3_cfb_encrypt(c, d, 1, 1,
                             &tctx->ks1, &tctx->ks2, &tctx->ks3,
                             (DES_cblock *)ctx->iv, ctx->enc);
        out[n / 8] = (out[n / 8] & ~(0x80 >> (unsigned int)(n % 8)))
            | ((d[0] & 0x80) >> (unsigned int)(n % 8));
    }

    return 1;
}
