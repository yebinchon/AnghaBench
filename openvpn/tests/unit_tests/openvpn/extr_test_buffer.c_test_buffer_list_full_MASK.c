#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct test_buffer_list_aggregate_ctx {TYPE_1__* one_two_three; } ;
struct TYPE_2__ {int /*<<< orphan*/  size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  teststr4 ; 

__attribute__((used)) static void
FUNC2(void **state)
{
    struct test_buffer_list_aggregate_ctx *ctx = *state;

    /* list full */
    FUNC0(ctx->one_two_three->size, 3);
    FUNC1(ctx->one_two_three, teststr4);
    FUNC0(ctx->one_two_three->size, 3);
}