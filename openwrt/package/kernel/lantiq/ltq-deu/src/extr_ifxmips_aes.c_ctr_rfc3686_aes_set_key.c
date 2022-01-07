
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int u8 ;
struct crypto_tfm {int crt_flags; } ;
struct aes_ctx {unsigned int key_length; scalar_t__ buf; int * nonce; } ;


 unsigned long CRYPTO_TFM_RES_BAD_KEY_LEN ;
 unsigned int CTR_RFC3686_NONCE_SIZE ;
 int EINVAL ;
 struct aes_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;
 int memcpy (int *,int const*,unsigned int) ;

int ctr_rfc3686_aes_set_key (struct crypto_tfm *tfm, const uint8_t *in_key, unsigned int key_len)
{
    struct aes_ctx *ctx = crypto_tfm_ctx(tfm);
    unsigned long *flags = (unsigned long *)&tfm->crt_flags;



    memcpy(ctx->nonce, in_key + (key_len - CTR_RFC3686_NONCE_SIZE),
           CTR_RFC3686_NONCE_SIZE);

    key_len -= CTR_RFC3686_NONCE_SIZE;

    if (key_len != 16 && key_len != 24 && key_len != 32) {
        *flags |= CRYPTO_TFM_RES_BAD_KEY_LEN;
        return -EINVAL;
    }

    ctx->key_length = key_len;

    memcpy ((u8 *) (ctx->buf), in_key, key_len);

    return 0;
}
