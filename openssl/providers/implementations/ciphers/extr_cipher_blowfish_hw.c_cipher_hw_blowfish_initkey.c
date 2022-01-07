
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ks; } ;
struct TYPE_4__ {TYPE_1__ ks; } ;
typedef int PROV_CIPHER_CTX ;
typedef TYPE_2__ PROV_BLOWFISH_CTX ;


 int BF_set_key (int *,size_t,unsigned char const*) ;

__attribute__((used)) static int cipher_hw_blowfish_initkey(PROV_CIPHER_CTX *ctx,
                                      const unsigned char *key, size_t keylen)
{
    PROV_BLOWFISH_CTX *bctx = (PROV_BLOWFISH_CTX *)ctx;

    BF_set_key(&bctx->ks.ks, keylen, key);
    return 1;
}
