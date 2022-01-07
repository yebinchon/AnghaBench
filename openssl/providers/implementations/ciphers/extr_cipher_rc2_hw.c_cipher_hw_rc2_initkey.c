
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ keylen; } ;
struct TYPE_5__ {int ks; } ;
struct TYPE_6__ {scalar_t__ key_bits; TYPE_1__ ks; } ;
typedef int RC2_KEY ;
typedef TYPE_2__ PROV_RC2_CTX ;
typedef TYPE_3__ PROV_CIPHER_CTX ;


 int RC2_set_key (int *,int,unsigned char const*,int) ;

__attribute__((used)) static int cipher_hw_rc2_initkey(PROV_CIPHER_CTX *ctx,
                                 const unsigned char *key, size_t keylen)
{
    PROV_RC2_CTX *rctx = (PROV_RC2_CTX *)ctx;
    RC2_KEY *ks = &(rctx->ks.ks);

    RC2_set_key(ks, (int)ctx->keylen, key, (int)rctx->key_bits);
    return 1;
}
