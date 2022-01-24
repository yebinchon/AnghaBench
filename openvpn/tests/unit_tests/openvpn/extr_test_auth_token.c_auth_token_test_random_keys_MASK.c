#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  auth_token_key; } ;
struct TYPE_8__ {int /*<<< orphan*/  auth_token; TYPE_1__ opt; } ;
struct TYPE_7__ {int /*<<< orphan*/  password; } ;
struct test_context {int /*<<< orphan*/  session; TYPE_3__ multi; TYPE_2__ up; } ;

/* Variables and functions */
 int /*<<< orphan*/  INLINE_FILE_TAG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,TYPE_3__*) ; 
 int now ; 
 int /*<<< orphan*/  random_key ; 
 int /*<<< orphan*/  random_token ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(void **state)
{
    struct test_context *ctx = (struct test_context *) *state;

    now = 0x5c331e9c;
    /* Preload the session id so the same session id is used here */
    ctx->multi.auth_token = FUNC6(random_token);

    FUNC3(&ctx->multi.opt.auth_token_key);
    FUNC2(&ctx->multi.opt.auth_token_key, INLINE_FILE_TAG, random_key);

    /* Zero the hmac part to ensure we have a newly generated token */
    FUNC8(ctx->multi.auth_token);

    FUNC4(&ctx->up, &ctx->multi);

    FUNC0(random_token, ctx->multi.auth_token);

    FUNC5(ctx->up.password, ctx->multi.auth_token);
    FUNC1(FUNC7(&ctx->up, &ctx->multi, &ctx->session));
}