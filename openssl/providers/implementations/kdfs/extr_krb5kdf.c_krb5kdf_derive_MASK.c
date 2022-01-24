#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  constant_len; int /*<<< orphan*/ * constant; int /*<<< orphan*/  key_len; int /*<<< orphan*/ * key; int /*<<< orphan*/  cipher; } ;
typedef  TYPE_1__ KRB5KDF_CTX ;
typedef  int /*<<< orphan*/  EVP_CIPHER ;
typedef  int /*<<< orphan*/  ENGINE ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_LIB_PROV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned char*,size_t) ; 
 int /*<<< orphan*/  PROV_R_MISSING_CIPHER ; 
 int /*<<< orphan*/  PROV_R_MISSING_CONSTANT ; 
 int /*<<< orphan*/  PROV_R_MISSING_KEY ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(void *vctx, unsigned char *key,
                              size_t keylen)
{
    KRB5KDF_CTX *ctx = (KRB5KDF_CTX *)vctx;
    const EVP_CIPHER *cipher = FUNC2(&ctx->cipher);
    ENGINE *engine = FUNC3(&ctx->cipher);

    if (cipher == NULL) {
        FUNC0(ERR_LIB_PROV, PROV_R_MISSING_CIPHER);
        return 0;
    }
    if (ctx->key == NULL) {
        FUNC0(ERR_LIB_PROV, PROV_R_MISSING_KEY);
        return 0;
    }
    if (ctx->constant == NULL) {
        FUNC0(ERR_LIB_PROV, PROV_R_MISSING_CONSTANT);
        return 0;
    }
    return FUNC1(cipher, engine, ctx->key, ctx->key_len,
                   ctx->constant, ctx->constant_len,
                   key, keylen);
}