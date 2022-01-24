#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  auth_token; } ;
struct TYPE_5__ {int /*<<< orphan*/  password; } ;
struct test_context {int /*<<< orphan*/  session; TYPE_2__ multi; TYPE_1__ up; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUTH_TOKEN_HMAC_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_2__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(void **state)
{
    struct test_context *ctx = (struct test_context *) *state;

    FUNC1(&ctx->up, &ctx->multi);
    FUNC2(ctx->up.password, ctx->multi.auth_token);
    FUNC0(FUNC3(&ctx->up, &ctx->multi, &ctx->session),
                     AUTH_TOKEN_HMAC_OK);
}