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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_2__*) ; 
 scalar_t__ now ; 
 int /*<<< orphan*/  now0key0 ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(void **state)
{
    struct test_context *ctx = (struct test_context *) *state;

    now = 0;
    /* Preload the session id so the same session id is used here */
    ctx->multi.auth_token = FUNC4(now0key0);

    /* Zero the hmac part to ensure we have a newly generated token */
    FUNC6(ctx->multi.auth_token);

    FUNC2(&ctx->up, &ctx->multi);

    FUNC1(now0key0, ctx->multi.auth_token);

    FUNC3(ctx->up.password, ctx->multi.auth_token);
    FUNC0(FUNC5(&ctx->up, &ctx->multi, &ctx->session),
                     AUTH_TOKEN_HMAC_OK);
}