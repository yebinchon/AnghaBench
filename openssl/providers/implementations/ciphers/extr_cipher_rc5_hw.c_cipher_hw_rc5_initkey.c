
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ks; } ;
struct TYPE_4__ {int rounds; TYPE_1__ ks; } ;
typedef TYPE_2__ PROV_RC5_CTX ;
typedef int PROV_CIPHER_CTX ;


 int RC5_32_set_key (int *,size_t,unsigned char const*,int ) ;

__attribute__((used)) static int cipher_hw_rc5_initkey(PROV_CIPHER_CTX *ctx,
                                 const unsigned char *key, size_t keylen)
{
    PROV_RC5_CTX *rctx = (PROV_RC5_CTX *)ctx;

    return RC5_32_set_key(&rctx->ks.ks, keylen, key, rctx->rounds);
}
