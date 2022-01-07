
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct des_ctx {unsigned int key_length; scalar_t__ expkey; scalar_t__ controlr_M; } ;
struct crypto_tfm {int dummy; } ;


 struct des_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;
 int memcpy (int *,int const*,unsigned int) ;

int des_setkey(struct crypto_tfm *tfm, const u8 *key,
                      unsigned int keylen)
{
        struct des_ctx *dctx = crypto_tfm_ctx(tfm);



        dctx->controlr_M = 0;
        dctx->key_length = keylen;

        memcpy ((u8 *) (dctx->expkey), key, keylen);

        return 0;
}
