
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shash_desc {int tfm; } ;
struct sha1_hmac_ctx {int keylen; int key; scalar_t__ dbn; } ;


 struct sha1_hmac_ctx* crypto_shash_ctx (int ) ;
 int sha1_hmac_setkey_hw (int ,int ) ;

__attribute__((used)) static int sha1_hmac_init(struct shash_desc *desc)
{
    struct sha1_hmac_ctx *sctx = crypto_shash_ctx(desc->tfm);


    sctx->dbn = 0;
    sha1_hmac_setkey_hw(sctx->key, sctx->keylen);

    return 0;
}
