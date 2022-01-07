
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct des_ctx {int dummy; } ;
struct crypto_tfm {int dummy; } ;


 int CRYPTO_DIR_DECRYPT ;
 int DES_BLOCK_SIZE ;
 struct des_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;
 int ifx_deu_des (struct des_ctx*,int *,int const*,int *,int ,int ,int ) ;

void des_decrypt (struct crypto_tfm *tfm, uint8_t * out, const uint8_t * in)
{
     struct des_ctx *ctx = crypto_tfm_ctx(tfm);
     ifx_deu_des (ctx, out, in, ((void*)0), DES_BLOCK_SIZE,
                    CRYPTO_DIR_DECRYPT, 0);
}
