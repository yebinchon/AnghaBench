
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct crypto_tfm {int dummy; } ;
struct aes_ctx {int dummy; } ;


 int AES_BLOCK_SIZE ;
 int CRYPTO_DIR_DECRYPT ;
 struct aes_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;
 int ifx_deu_aes (struct aes_ctx*,int *,int const*,int *,int ,int ,int ) ;

void aes_decrypt (struct crypto_tfm *tfm, uint8_t *out, const uint8_t *in)
{
    struct aes_ctx *ctx = crypto_tfm_ctx(tfm);
    ifx_deu_aes (ctx, out, in, ((void*)0), AES_BLOCK_SIZE,
            CRYPTO_DIR_DECRYPT, 0);
}
