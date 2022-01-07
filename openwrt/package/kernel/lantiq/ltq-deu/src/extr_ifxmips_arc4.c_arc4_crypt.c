
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_tfm {int dummy; } ;
struct arc4_ctx {int dummy; } ;


 int ARC4_BLOCK_SIZE ;
 int CRYPTO_DIR_DECRYPT ;
 int _deu_arc4 (struct arc4_ctx*,int *,int const*,int *,int ,int ,int ) ;
 struct arc4_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;

__attribute__((used)) static void arc4_crypt(struct crypto_tfm *tfm, u8 *out, const u8 *in)
{
        struct arc4_ctx *ctx = crypto_tfm_ctx(tfm);

        _deu_arc4 (ctx, out, in, ((void*)0), ARC4_BLOCK_SIZE,
                    CRYPTO_DIR_DECRYPT, 0);

}
