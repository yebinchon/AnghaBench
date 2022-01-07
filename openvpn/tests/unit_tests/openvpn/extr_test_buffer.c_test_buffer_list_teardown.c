
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test_buffer_list_aggregate_ctx {int empty_buffers; int zero_length_strings; int one_two_three; int empty; } ;


 int buffer_list_free (int ) ;
 int free (struct test_buffer_list_aggregate_ctx*) ;

__attribute__((used)) static int test_buffer_list_teardown(void **state)
{
    struct test_buffer_list_aggregate_ctx *ctx = *state;

    buffer_list_free(ctx->empty);
    buffer_list_free(ctx->one_two_three);
    buffer_list_free(ctx->zero_length_strings);
    buffer_list_free(ctx->empty_buffers);
    free(ctx);
    return 0;
}
