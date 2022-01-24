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
typedef  int /*<<< orphan*/  uint8_t ;
struct des_ctx {int dummy; } ;
struct crypto_tfm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_DIR_DECRYPT ; 
 int /*<<< orphan*/  DES_BLOCK_SIZE ; 
 struct des_ctx* FUNC0 (struct crypto_tfm*) ; 
 int /*<<< orphan*/  FUNC1 (struct des_ctx*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2 (struct crypto_tfm *tfm, uint8_t * out, const uint8_t * in)
{
     struct des_ctx *ctx = FUNC0(tfm);
     FUNC1 (ctx, out, in, NULL, DES_BLOCK_SIZE,
                    CRYPTO_DIR_DECRYPT, 0);
}