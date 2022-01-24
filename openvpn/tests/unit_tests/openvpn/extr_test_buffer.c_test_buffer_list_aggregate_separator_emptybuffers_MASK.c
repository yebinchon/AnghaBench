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
struct test_buffer_list_aggregate_ctx {struct buffer_list* empty_buffers; } ;
struct buffer_list {int /*<<< orphan*/  size; } ;
struct buffer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buffer*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_list*,int,int /*<<< orphan*/ ) ; 
 struct buffer* FUNC3 (struct buffer_list*) ; 
 int /*<<< orphan*/  testnosep ; 

__attribute__((used)) static void
FUNC4(void **state)
{
    struct test_buffer_list_aggregate_ctx *ctx = *state;
    struct buffer_list *bl_emptybuffers = ctx->empty_buffers;

    /* Aggregate all */
    FUNC2(bl_emptybuffers, 1<<16, testnosep);
    FUNC1(bl_emptybuffers->size, 1);
    struct buffer *buf = FUNC3(bl_emptybuffers);
    FUNC1(FUNC0(buf), 0);
}