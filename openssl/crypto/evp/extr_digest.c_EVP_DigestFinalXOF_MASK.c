#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {TYPE_1__* digest; int /*<<< orphan*/  md_data; int /*<<< orphan*/  provctx; } ;
struct TYPE_10__ {int (* dfinal ) (int /*<<< orphan*/ ,unsigned char*,size_t*,size_t) ;int flags; int (* final ) (TYPE_2__*,unsigned char*) ;int /*<<< orphan*/  ctx_size; int /*<<< orphan*/  (* cleanup ) (TYPE_2__*) ;scalar_t__ (* md_ctrl ) (TYPE_2__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ;int /*<<< orphan*/ * prov; } ;
typedef  int /*<<< orphan*/  OSSL_PARAM ;
typedef  TYPE_2__ EVP_MD_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  EVP_F_EVP_DIGESTFINALXOF ; 
 int /*<<< orphan*/  EVP_MD_CTRL_XOF_LEN ; 
 int /*<<< orphan*/  EVP_MD_CTX_FLAG_CLEANED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int EVP_MD_FLAG_XOF ; 
 int /*<<< orphan*/  EVP_R_FINAL_ERROR ; 
 int /*<<< orphan*/  EVP_R_NOT_XOF_OR_INVALID_LENGTH ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t INT_MAX ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OSSL_DIGEST_PARAM_XOFLEN ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,size_t*) ; 
 int FUNC7 (int /*<<< orphan*/ ,unsigned char*,size_t*,size_t) ; 
 scalar_t__ FUNC8 (TYPE_2__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC9 (TYPE_2__*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 

int FUNC11(EVP_MD_CTX *ctx, unsigned char *md, size_t size)
{
    int ret = 0;
    OSSL_PARAM params[2];
    size_t i = 0;

    if (ctx->digest == NULL || ctx->digest->prov == NULL)
        goto legacy;

    if (ctx->digest->dfinal == NULL) {
        FUNC3(EVP_F_EVP_DIGESTFINALXOF, EVP_R_FINAL_ERROR);
        return 0;
    }

    params[i++] = FUNC6(OSSL_DIGEST_PARAM_XOFLEN, &size);
    params[i++] = FUNC5();

    if (FUNC2(ctx, params) > 0)
        ret = ctx->digest->dfinal(ctx->provctx, md, &size, size);
    FUNC0(ctx);
    return ret;

legacy:
    if (ctx->digest->flags & EVP_MD_FLAG_XOF
        && size <= INT_MAX
        && ctx->digest->md_ctrl(ctx, EVP_MD_CTRL_XOF_LEN, (int)size, NULL)) {
        ret = ctx->digest->final(ctx, md);
        if (ctx->digest->cleanup != NULL) {
            ctx->digest->cleanup(ctx);
            FUNC1(ctx, EVP_MD_CTX_FLAG_CLEANED);
        }
        FUNC4(ctx->md_data, ctx->digest->ctx_size);
    } else {
        FUNC3(EVP_F_EVP_DIGESTFINALXOF, EVP_R_NOT_XOF_OR_INVALID_LENGTH);
    }

    return ret;
}