#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct crypto_tfm {int /*<<< orphan*/  crt_flags; } ;
struct aes_ctx {unsigned int key_length; scalar_t__ buf; } ;

/* Variables and functions */
 unsigned long CRYPTO_TFM_RES_BAD_KEY_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,struct aes_ctx*,unsigned int,unsigned int) ; 
 int EINVAL ; 
 struct aes_ctx* FUNC1 (struct crypto_tfm*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,unsigned int) ; 

int FUNC3 (struct crypto_tfm *tfm, const u8 *in_key, unsigned int key_len)
{
    struct aes_ctx *ctx = FUNC1(tfm);
    unsigned long *flags = (unsigned long *) &tfm->crt_flags;

    //printk("set_key in %s\n", __FILE__);

    //aes_chip_init();

    if (key_len != 16 && key_len != 24 && key_len != 32) {
        *flags |= CRYPTO_TFM_RES_BAD_KEY_LEN;
        return -EINVAL;
    }

    ctx->key_length = key_len;
    FUNC0(0, "ctx @%p, key_len %d, ctx->key_length %d\n", ctx, key_len, ctx->key_length);
    FUNC2 ((u8 *) (ctx->buf), in_key, key_len);

    return 0;
}