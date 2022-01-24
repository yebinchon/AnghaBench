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
struct key_ctx {scalar_t__ implicit_iv_len; int /*<<< orphan*/ * hmac; int /*<<< orphan*/ * cipher; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void
FUNC3(struct key_ctx *ctx)
{
    if (ctx->cipher)
    {
        FUNC0(ctx->cipher);
        ctx->cipher = NULL;
    }
    if (ctx->hmac)
    {
        FUNC1(ctx->hmac);
        FUNC2(ctx->hmac);
        ctx->hmac = NULL;
    }
    ctx->implicit_iv_len = 0;
}