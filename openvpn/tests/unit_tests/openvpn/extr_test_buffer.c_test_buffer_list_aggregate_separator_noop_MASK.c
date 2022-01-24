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
struct test_buffer_list_aggregate_ctx {TYPE_1__* one_two_three; } ;
struct buffer {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 struct buffer* FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  testsep ; 
 int /*<<< orphan*/  teststr1 ; 

__attribute__((used)) static void
FUNC4(void **state)
{
    struct test_buffer_list_aggregate_ctx *ctx = *state;

    /* With a max length of 2, no aggregation should take place */
    FUNC2(ctx->one_two_three, 2, testsep);
    FUNC1(ctx->one_two_three->size, 3);
    struct buffer *buf = FUNC3(ctx->one_two_three);
    FUNC0(buf, teststr1);
}