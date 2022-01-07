
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct md5_hmac_ctx {unsigned int keylen; int key; } ;
struct deu_hash_t {int KIDX; } ;
struct crypto_shash {int dummy; } ;


 int EINVAL ;
 scalar_t__ HASH_START ;
 unsigned int MAX_HASH_KEYLEN ;
 struct md5_hmac_ctx* crypto_shash_ctx (struct crypto_shash*) ;
 int memcpy (int *,int const*,unsigned int) ;
 int printk (char*) ;

__attribute__((used)) static int md5_hmac_setkey(struct crypto_shash *tfm, const u8 *key, unsigned int keylen)
{
    struct md5_hmac_ctx *mctx = crypto_shash_ctx(tfm);
    volatile struct deu_hash_t *hash = (struct deu_hash_t *) HASH_START;


    if (keylen > MAX_HASH_KEYLEN) {
 printk("Key length more than what DEU hash can handle\n");
 return -EINVAL;
    }


    hash->KIDX |= 0x80000000;
    memcpy(&mctx->key, key, keylen);
    mctx->keylen = keylen;

    return 0;

}
