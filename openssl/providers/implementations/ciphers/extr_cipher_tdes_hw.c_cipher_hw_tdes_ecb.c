
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int const_DES_cblock ;
struct TYPE_5__ {int enc; } ;
struct TYPE_4__ {int ks3; int ks2; int ks1; } ;
typedef TYPE_1__ PROV_TDES_CTX ;
typedef TYPE_2__ PROV_CIPHER_CTX ;
typedef int DES_cblock ;


 size_t DES_BLOCK_SIZE ;
 int DES_ecb3_encrypt (int *,int *,int *,int *,int *,int ) ;

int cipher_hw_tdes_ecb(PROV_CIPHER_CTX *ctx, unsigned char *out,
                       const unsigned char *in, size_t len)
{
    size_t i;
    PROV_TDES_CTX *tctx = (PROV_TDES_CTX *)ctx;

    if (len < DES_BLOCK_SIZE)
        return 1;

    for (i = 0, len -= DES_BLOCK_SIZE; i <= len; i += DES_BLOCK_SIZE) {
        DES_ecb3_encrypt((const_DES_cblock *)(in + i), (DES_cblock *)(out + i),
                         &tctx->ks1, &tctx->ks2, &tctx->ks3, ctx->enc);
    }
    return 1;
}
