
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int const_DES_cblock ;
struct TYPE_7__ {size_t blocksize; int enc; } ;
struct TYPE_5__ {int ks; } ;
struct TYPE_6__ {TYPE_1__ dks; } ;
typedef TYPE_2__ PROV_DES_CTX ;
typedef TYPE_3__ PROV_CIPHER_CTX ;
typedef int DES_key_schedule ;


 int DES_ecb_encrypt (int *,int *,int *,int ) ;

__attribute__((used)) static int cipher_hw_des_ecb_cipher(PROV_CIPHER_CTX *ctx, unsigned char *out,
                                    const unsigned char *in, size_t len)
{
    size_t i, bl = ctx->blocksize;
    DES_key_schedule *key = &(((PROV_DES_CTX *)ctx)->dks.ks);

    if (len < bl)
        return 1;
    for (i = 0, len -= bl; i <= len; i += bl)
        DES_ecb_encrypt((const_DES_cblock *)(in + i),
                        (const_DES_cblock *)(out + i), key, ctx->enc);
    return 1;
}
