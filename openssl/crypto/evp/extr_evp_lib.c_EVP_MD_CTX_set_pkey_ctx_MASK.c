#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * pctx; } ;
typedef  int /*<<< orphan*/  EVP_PKEY_CTX ;
typedef  TYPE_1__ EVP_MD_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  EVP_MD_CTX_FLAG_KEEP_PKEY_CTX ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(EVP_MD_CTX *ctx, EVP_PKEY_CTX *pctx)
{
    /*
     * it's reasonable to set NULL pctx (a.k.a clear the ctx->pctx), so
     * we have to deal with the cleanup job here.
     */
    if (!FUNC2(ctx, EVP_MD_CTX_FLAG_KEEP_PKEY_CTX))
        FUNC3(ctx->pctx);

    ctx->pctx = pctx;

    if (pctx != NULL) {
        /* make sure pctx is not freed when destroying EVP_MD_CTX */
        FUNC1(ctx, EVP_MD_CTX_FLAG_KEEP_PKEY_CTX);
    } else {
        FUNC0(ctx, EVP_MD_CTX_FLAG_KEEP_PKEY_CTX);
    }
}