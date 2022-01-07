
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct test_buffer_list_aggregate_ctx {void* empty_buffers; void* zero_length_strings; void* one_two_three; void* empty; } ;


 void* buffer_list_new (int) ;
 int buffer_list_push (void*,char*) ;
 int buffer_list_push_data (void*,int *,int ) ;
 struct test_buffer_list_aggregate_ctx* calloc (int,int) ;
 char* teststr1 ;
 char* teststr2 ;
 char* teststr3 ;

__attribute__((used)) static int test_buffer_list_setup(void **state)
{
    struct test_buffer_list_aggregate_ctx *ctx = calloc(1, sizeof(*ctx));
    ctx->empty = buffer_list_new(0);

    ctx->one_two_three = buffer_list_new(3);
    buffer_list_push(ctx->one_two_three, teststr1);
    buffer_list_push(ctx->one_two_three, teststr2);
    buffer_list_push(ctx->one_two_three, teststr3);

    ctx->zero_length_strings = buffer_list_new(2);
    buffer_list_push(ctx->zero_length_strings, "");
    buffer_list_push(ctx->zero_length_strings, "");

    ctx->empty_buffers = buffer_list_new(2);
    uint8_t data = 0;
    buffer_list_push_data(ctx->empty_buffers, &data, 0);
    buffer_list_push_data(ctx->empty_buffers, &data, 0);

    *state = ctx;
    return 0;
}
