#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct test_buffer_list_aggregate_ctx {int /*<<< orphan*/  empty_buffers; int /*<<< orphan*/  zero_length_strings; int /*<<< orphan*/  one_two_three; int /*<<< orphan*/  empty; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct test_buffer_list_aggregate_ctx*) ; 

__attribute__((used)) static int FUNC2(void **state)
{
    struct test_buffer_list_aggregate_ctx *ctx = *state;

    FUNC0(ctx->empty);
    FUNC0(ctx->one_two_three);
    FUNC0(ctx->zero_length_strings);
    FUNC0(ctx->empty_buffers);
    FUNC1(ctx);
    return 0;
}