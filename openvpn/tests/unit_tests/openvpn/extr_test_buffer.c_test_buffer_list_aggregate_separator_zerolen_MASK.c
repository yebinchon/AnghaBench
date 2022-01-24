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
struct test_buffer_list_aggregate_ctx {struct buffer_list* zero_length_strings; } ;
struct buffer_list {int /*<<< orphan*/  size; } ;
struct buffer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buffer*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_list*,int,int /*<<< orphan*/ ) ; 
 struct buffer* FUNC3 (struct buffer_list*) ; 
 int /*<<< orphan*/  testnosep ; 

__attribute__((used)) static void
FUNC4(void **state)
{
    struct test_buffer_list_aggregate_ctx *ctx = *state;
    struct buffer_list *bl_zerolen = ctx->zero_length_strings;

    /* Aggregate all */
    FUNC2(bl_zerolen, 1<<16, testnosep);
    FUNC1(bl_zerolen->size, 1);
    struct buffer *buf = FUNC3(bl_zerolen);
    FUNC0(buf, "");
}