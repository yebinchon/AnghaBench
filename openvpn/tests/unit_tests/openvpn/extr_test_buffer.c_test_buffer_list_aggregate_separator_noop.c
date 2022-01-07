
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct test_buffer_list_aggregate_ctx {TYPE_1__* one_two_three; } ;
struct buffer {int dummy; } ;
struct TYPE_3__ {int size; } ;


 int assert_buf_equals_str (struct buffer*,int ) ;
 int assert_int_equal (int ,int) ;
 int buffer_list_aggregate_separator (TYPE_1__*,int,int ) ;
 struct buffer* buffer_list_peek (TYPE_1__*) ;
 int testsep ;
 int teststr1 ;

__attribute__((used)) static void
test_buffer_list_aggregate_separator_noop(void **state)
{
    struct test_buffer_list_aggregate_ctx *ctx = *state;


    buffer_list_aggregate_separator(ctx->one_two_three, 2, testsep);
    assert_int_equal(ctx->one_two_three->size, 3);
    struct buffer *buf = buffer_list_peek(ctx->one_two_three);
    assert_buf_equals_str(buf, teststr1);
}
