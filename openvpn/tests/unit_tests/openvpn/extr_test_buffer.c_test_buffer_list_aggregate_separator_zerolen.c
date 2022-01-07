
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test_buffer_list_aggregate_ctx {struct buffer_list* zero_length_strings; } ;
struct buffer_list {int size; } ;
struct buffer {int dummy; } ;


 int assert_buf_equals_str (struct buffer*,char*) ;
 int assert_int_equal (int ,int) ;
 int buffer_list_aggregate_separator (struct buffer_list*,int,int ) ;
 struct buffer* buffer_list_peek (struct buffer_list*) ;
 int testnosep ;

__attribute__((used)) static void
test_buffer_list_aggregate_separator_zerolen(void **state)
{
    struct test_buffer_list_aggregate_ctx *ctx = *state;
    struct buffer_list *bl_zerolen = ctx->zero_length_strings;


    buffer_list_aggregate_separator(bl_zerolen, 1<<16, testnosep);
    assert_int_equal(bl_zerolen->size, 1);
    struct buffer *buf = buffer_list_peek(bl_zerolen);
    assert_buf_equals_str(buf, "");
}
