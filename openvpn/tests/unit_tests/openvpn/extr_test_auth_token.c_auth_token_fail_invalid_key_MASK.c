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
struct TYPE_8__ {TYPE_1__ opt; int /*<<< orphan*/  auth_token; } ;
struct TYPE_7__ {int /*<<< orphan*/  password; } ;
struct test_context {int /*<<< orphan*/  session; TYPE_3__ multi; TYPE_2__ up; int /*<<< orphan*/  kt; } ;
struct key {int dummy; } ;
typedef  int /*<<< orphan*/  key ;

/* Variables and functions */
 int /*<<< orphan*/  AUTH_TOKEN_HMAC_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct key*,int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct key*,char,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,TYPE_3__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7(void **state)
{
    struct test_context *ctx = (struct test_context *) *state;

    FUNC2(&ctx->up, &ctx->multi);
    FUNC5(ctx->up.password, ctx->multi.auth_token);
    FUNC0(FUNC6(&ctx->up, &ctx->multi, &ctx->session),
                     AUTH_TOKEN_HMAC_OK);

    /* Change auth-token key */
    struct key key;
    FUNC4(&key, '1', sizeof(key));
    FUNC1(&ctx->multi.opt.auth_token_key);
    FUNC3(&ctx->multi.opt.auth_token_key, &key, &ctx->kt, false, "TEST");

    FUNC0(FUNC6(&ctx->up, &ctx->multi, &ctx->session), 0);

    /* Load original test key again */
    FUNC4(&key, 0, sizeof(key));
    FUNC1(&ctx->multi.opt.auth_token_key);
    FUNC3(&ctx->multi.opt.auth_token_key, &key, &ctx->kt, false, "TEST");
    FUNC0(FUNC6(&ctx->up, &ctx->multi, &ctx->session),
                     AUTH_TOKEN_HMAC_OK);

}