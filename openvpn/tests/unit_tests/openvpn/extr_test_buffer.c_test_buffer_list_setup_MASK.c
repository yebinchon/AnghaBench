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
typedef  int /*<<< orphan*/  uint8_t ;
struct test_buffer_list_aggregate_ctx {void* empty_buffers; void* zero_length_strings; void* one_two_three; void* empty; } ;

/* Variables and functions */
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (void*,char*) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct test_buffer_list_aggregate_ctx* FUNC3 (int,int) ; 
 char* teststr1 ; 
 char* teststr2 ; 
 char* teststr3 ; 

__attribute__((used)) static int FUNC4(void **state)
{
    struct test_buffer_list_aggregate_ctx *ctx  = FUNC3(1, sizeof(*ctx));
    ctx->empty = FUNC0(0);

    ctx->one_two_three = FUNC0(3);
    FUNC1(ctx->one_two_three, teststr1);
    FUNC1(ctx->one_two_three, teststr2);
    FUNC1(ctx->one_two_three, teststr3);

    ctx->zero_length_strings = FUNC0(2);
    FUNC1(ctx->zero_length_strings, "");
    FUNC1(ctx->zero_length_strings, "");

    ctx->empty_buffers = FUNC0(2);
    uint8_t data = 0;
    FUNC2(ctx->empty_buffers, &data, 0);
    FUNC2(ctx->empty_buffers, &data, 0);

    *state = ctx;
    return 0;
}