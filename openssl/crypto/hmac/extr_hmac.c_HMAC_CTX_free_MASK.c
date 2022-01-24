#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  md_ctx; int /*<<< orphan*/  o_ctx; int /*<<< orphan*/  i_ctx; } ;
typedef  TYPE_1__ HMAC_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

void FUNC3(HMAC_CTX *ctx)
{
    if (ctx != NULL) {
        FUNC2(ctx);
        FUNC0(ctx->i_ctx);
        FUNC0(ctx->o_ctx);
        FUNC0(ctx->md_ctx);
        FUNC1(ctx);
    }
}