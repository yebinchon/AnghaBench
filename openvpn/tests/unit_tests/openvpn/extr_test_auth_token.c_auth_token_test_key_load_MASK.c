#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  auth_token_key; } ;
struct TYPE_6__ {TYPE_1__ opt; } ;
struct TYPE_5__ {int /*<<< orphan*/  password; } ;
struct test_context {int /*<<< orphan*/  session; TYPE_3__ multi; TYPE_2__ up; } ;

/* Variables and functions */
 int /*<<< orphan*/  INLINE_FILE_TAG ; 
 int /*<<< orphan*/  allx01inline ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  now0key0 ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  zeroinline ; 

__attribute__((used)) static void
FUNC6(void **state)
{
    struct test_context *ctx = (struct test_context *) *state;

    FUNC3(&ctx->multi.opt.auth_token_key);
    FUNC2(&ctx->multi.opt.auth_token_key, INLINE_FILE_TAG, zeroinline);
    FUNC4(ctx->up.password, now0key0);
    FUNC1(FUNC5(&ctx->up, &ctx->multi, &ctx->session));

    FUNC3(&ctx->multi.opt.auth_token_key);
    FUNC2(&ctx->multi.opt.auth_token_key, INLINE_FILE_TAG, allx01inline);
    FUNC0(FUNC5(&ctx->up, &ctx->multi, &ctx->session));
}