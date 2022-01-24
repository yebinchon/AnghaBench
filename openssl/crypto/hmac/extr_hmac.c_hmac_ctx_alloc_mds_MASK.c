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
struct TYPE_3__ {int /*<<< orphan*/ * md_ctx; int /*<<< orphan*/ * o_ctx; int /*<<< orphan*/ * i_ctx; } ;
typedef  TYPE_1__ HMAC_CTX ;

/* Variables and functions */
 void* FUNC0 () ; 

__attribute__((used)) static int FUNC1(HMAC_CTX *ctx)
{
    if (ctx->i_ctx == NULL)
        ctx->i_ctx = FUNC0();
    if (ctx->i_ctx == NULL)
        return 0;
    if (ctx->o_ctx == NULL)
        ctx->o_ctx = FUNC0();
    if (ctx->o_ctx == NULL)
        return 0;
    if (ctx->md_ctx == NULL)
        ctx->md_ctx = FUNC0();
    if (ctx->md_ctx == NULL)
        return 0;
    return 1;
}