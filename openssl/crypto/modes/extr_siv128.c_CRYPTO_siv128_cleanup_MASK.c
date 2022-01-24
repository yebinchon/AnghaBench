#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int final_ret; int crypto_ok; int /*<<< orphan*/  tag; int /*<<< orphan*/  d; int /*<<< orphan*/ * mac; int /*<<< orphan*/ * mac_ctx_init; int /*<<< orphan*/ * cipher_ctx; } ;
typedef  TYPE_1__ SIV128_CONTEXT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 

int FUNC4(SIV128_CONTEXT *ctx)
{
    if (ctx != NULL) {
        FUNC0(ctx->cipher_ctx);
        ctx->cipher_ctx = NULL;
        FUNC1(ctx->mac_ctx_init);
        ctx->mac_ctx_init = NULL;
        FUNC2(ctx->mac);
        ctx->mac = NULL;
        FUNC3(&ctx->d, sizeof(ctx->d));
        FUNC3(&ctx->tag, sizeof(ctx->tag));
        ctx->final_ret = -1;
        ctx->crypto_ok = 1;
    }
    return 1;
}