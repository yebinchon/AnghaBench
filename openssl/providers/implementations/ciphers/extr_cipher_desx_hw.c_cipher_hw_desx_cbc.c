
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int enc; scalar_t__ iv; } ;
struct TYPE_4__ {int ks3; int ks2; int ks1; } ;
typedef TYPE_1__ PROV_TDES_CTX ;
typedef TYPE_2__ PROV_CIPHER_CTX ;
typedef int DES_cblock ;


 int DES_xcbc_encrypt (unsigned char const*,unsigned char*,long,int *,int *,int *,int *,int ) ;
 size_t MAXCHUNK ;

__attribute__((used)) static int cipher_hw_desx_cbc(PROV_CIPHER_CTX *ctx, unsigned char *out,
                              const unsigned char *in, size_t inl)
{
    PROV_TDES_CTX *tctx = (PROV_TDES_CTX *)ctx;

    while (inl >= MAXCHUNK) {
        DES_xcbc_encrypt(in, out, (long)MAXCHUNK, &tctx->ks1,
                         (DES_cblock *)ctx->iv, &tctx->ks2, &tctx->ks3,
                         ctx->enc);
        inl -= MAXCHUNK;
        in += MAXCHUNK;
        out += MAXCHUNK;
    }
    if (inl > 0)
        DES_xcbc_encrypt(in, out, (long)inl, &tctx->ks1,
                         (DES_cblock *)ctx->iv, &tctx->ks2, &tctx->ks3,
                         ctx->enc);
    return 1;
}
