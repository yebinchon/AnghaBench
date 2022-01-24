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
struct TYPE_5__ {struct test_context* opt; } ;
struct TYPE_4__ {int /*<<< orphan*/  auth_token_key; } ;
struct TYPE_6__ {TYPE_1__ opt; } ;
struct test_context {TYPE_2__ session; TYPE_3__ multi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct test_context*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 

__attribute__((used)) static int
FUNC3(void **state)
{
    struct test_context *ctx = (struct test_context *) *state;

    FUNC1(&ctx->multi.opt.auth_token_key);
    FUNC2(&ctx->multi);

    FUNC0(ctx->session.opt);
    FUNC0(ctx);

    return 0;
}