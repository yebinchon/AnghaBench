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
struct crypto_ablkcipher {int dummy; } ;
struct aes_ctx {int /*<<< orphan*/ * nonce; } ;
struct ablkcipher_request {int /*<<< orphan*/ * info; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_DIR_DECRYPT ; 
 int CTR_RFC3686_IV_SIZE ; 
 int CTR_RFC3686_NONCE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct aes_ctx* FUNC1 (struct crypto_ablkcipher*) ; 
 struct crypto_ablkcipher* FUNC2 (struct ablkcipher_request*) ; 
 int FUNC3 (struct aes_ctx*,struct ablkcipher_request*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC5(struct ablkcipher_request *areq)
{
    struct crypto_ablkcipher *cipher = FUNC2(areq);
    struct aes_ctx *ctx = FUNC1(cipher);
    int ret;
    u8 *info = areq->info;
    u8 rfc3686_iv[16];

    /* set up counter block */
    FUNC4(rfc3686_iv, ctx->nonce, CTR_RFC3686_NONCE_SIZE);
    FUNC4(rfc3686_iv + CTR_RFC3686_NONCE_SIZE, info, CTR_RFC3686_IV_SIZE);

    /* initialize counter portion of counter block */
    *(__be32 *)(rfc3686_iv + CTR_RFC3686_NONCE_SIZE + CTR_RFC3686_IV_SIZE) =
        FUNC0(1);

    areq->info = rfc3686_iv;
    ret = FUNC3(ctx, areq, areq->info, CRYPTO_DIR_DECRYPT, 4);
    areq->info = info;
    return ret;
}