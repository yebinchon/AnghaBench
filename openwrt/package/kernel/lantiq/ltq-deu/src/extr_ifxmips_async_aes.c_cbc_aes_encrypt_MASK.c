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
struct crypto_ablkcipher {int dummy; } ;
struct aes_ctx {int dummy; } ;
struct ablkcipher_request {int /*<<< orphan*/  info; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_DIR_ENCRYPT ; 
 struct aes_ctx* FUNC0 (struct crypto_ablkcipher*) ; 
 struct crypto_ablkcipher* FUNC1 (struct ablkcipher_request*) ; 
 int FUNC2 (struct aes_ctx*,struct ablkcipher_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3 (struct ablkcipher_request *areq)
{
    struct crypto_ablkcipher *cipher = FUNC1(areq);
    struct aes_ctx *ctx = FUNC0(cipher);

    return FUNC2(ctx, areq, areq->info, CRYPTO_DIR_ENCRYPT, 1);

}