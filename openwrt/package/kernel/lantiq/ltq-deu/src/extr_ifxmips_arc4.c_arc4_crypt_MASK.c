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
struct crypto_tfm {int dummy; } ;
struct arc4_ctx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARC4_BLOCK_SIZE ; 
 int /*<<< orphan*/  CRYPTO_DIR_DECRYPT ; 
 int /*<<< orphan*/  FUNC0 (struct arc4_ctx*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct arc4_ctx* FUNC1 (struct crypto_tfm*) ; 

__attribute__((used)) static void FUNC2(struct crypto_tfm *tfm, u8 *out, const u8 *in)
{
        struct arc4_ctx *ctx = FUNC1(tfm);

        FUNC0 (ctx, out, in, NULL, ARC4_BLOCK_SIZE,
                    CRYPTO_DIR_DECRYPT, 0);

}