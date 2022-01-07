
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ks; } ;
struct TYPE_4__ {TYPE_1__ ks; } ;
typedef TYPE_2__ PROV_SEED_CTX ;
typedef int PROV_CIPHER_CTX ;


 int SEED_set_key (unsigned char const*,int *) ;

__attribute__((used)) static int cipher_hw_seed_initkey(PROV_CIPHER_CTX *ctx,
                                  const unsigned char *key, size_t keylen)
{
    PROV_SEED_CTX *sctx = (PROV_SEED_CTX *)ctx;

    SEED_set_key(key, &(sctx->ks.ks));
    return 1;
}
