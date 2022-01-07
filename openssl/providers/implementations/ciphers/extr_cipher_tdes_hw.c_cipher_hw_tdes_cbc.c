
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int enc; scalar_t__ iv; } ;
struct TYPE_7__ {int ks; } ;
struct TYPE_6__ {int (* cbc ) (unsigned char const*,unsigned char*,size_t,int ,scalar_t__) ;} ;
struct TYPE_8__ {int ks3; int ks2; int ks1; TYPE_2__ tks; TYPE_1__ tstream; } ;
typedef TYPE_3__ PROV_TDES_CTX ;
typedef TYPE_4__ PROV_CIPHER_CTX ;
typedef int DES_cblock ;


 int DES_ede3_cbc_encrypt (unsigned char const*,unsigned char*,long,int *,int *,int *,int *,int ) ;
 size_t MAXCHUNK ;
 int stub1 (unsigned char const*,unsigned char*,size_t,int ,scalar_t__) ;

int cipher_hw_tdes_cbc(PROV_CIPHER_CTX *ctx, unsigned char *out,
                       const unsigned char *in, size_t inl)
{
    PROV_TDES_CTX *tctx = (PROV_TDES_CTX *)ctx;

    if (tctx->tstream.cbc != ((void*)0)) {
        (*tctx->tstream.cbc) (in, out, inl, tctx->tks.ks, ctx->iv);
        return 1;
    }

    while (inl >= MAXCHUNK) {
        DES_ede3_cbc_encrypt(in, out, (long)MAXCHUNK, &tctx->ks1, &tctx->ks2,
                             &tctx->ks3, (DES_cblock *)ctx->iv, ctx->enc);
        inl -= MAXCHUNK;
        in += MAXCHUNK;
        out += MAXCHUNK;
    }
    if (inl > 0)
        DES_ede3_cbc_encrypt(in, out, (long)inl, &tctx->ks1, &tctx->ks2,
                             &tctx->ks3, (DES_cblock *)ctx->iv, ctx->enc);
    return 1;
}
