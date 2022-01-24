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
struct TYPE_6__ {char* auth_token; } ;
struct TYPE_5__ {int /*<<< orphan*/  password; int /*<<< orphan*/  username; } ;
struct test_context {int /*<<< orphan*/  session; TYPE_2__ multi; TYPE_1__ up; } ;

/* Variables and functions */
 int AUTH_TOKEN_EXPIRED ; 
 int AUTH_TOKEN_HMAC_OK ; 
 int AUTH_TOKEN_VALID_EMPTYUSER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_2__*) ; 
 int now ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(void **state)
{
    struct test_context *ctx = (struct test_context *) *state;

    FUNC0(ctx->up.username);
    now = 0;

    FUNC2(&ctx->up, &ctx->multi);
    FUNC3(ctx->up.password, ctx->multi.auth_token);
    FUNC1(FUNC4(&ctx->up, &ctx->multi, &ctx->session),
                     AUTH_TOKEN_HMAC_OK);

    now = 100000;
    FUNC1(FUNC4(&ctx->up, &ctx->multi, &ctx->session),
                     AUTH_TOKEN_HMAC_OK|AUTH_TOKEN_EXPIRED);
    FUNC3(ctx->up.username, "test user name");

    now = 0;
    FUNC1(FUNC4(&ctx->up, &ctx->multi, &ctx->session),
                     AUTH_TOKEN_HMAC_OK|AUTH_TOKEN_VALID_EMPTYUSER);

    FUNC3(ctx->up.username, "test user name");
    now = 100000;
    FUNC1(FUNC4(&ctx->up, &ctx->multi, &ctx->session),
                     AUTH_TOKEN_HMAC_OK|AUTH_TOKEN_EXPIRED|AUTH_TOKEN_VALID_EMPTYUSER);

    FUNC5(ctx->up.password);
    FUNC1(FUNC4(&ctx->up, &ctx->multi, &ctx->session),
                     0);
}