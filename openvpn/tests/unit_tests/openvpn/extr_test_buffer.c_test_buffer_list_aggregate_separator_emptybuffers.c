
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test_buffer_list_aggregate_ctx {struct buffer_list* empty_buffers; } ;
struct buffer_list {int size; } ;
struct buffer {int dummy; } ;


 int BLEN (struct buffer*) ;
 int assert_int_equal (int ,int) ;
 int buffer_list_aggregate_separator (struct buffer_list*,int,int ) ;
 struct buffer* buffer_list_peek (struct buffer_list*) ;
 int testnosep ;

__attribute__((used)) static void
test_buffer_list_aggregate_separator_emptybuffers(void **state)
{
    struct test_buffer_list_aggregate_ctx *ctx = *state;
    struct buffer_list *bl_emptybuffers = ctx->empty_buffers;


    buffer_list_aggregate_separator(bl_emptybuffers, 1<<16, testnosep);
    assert_int_equal(bl_emptybuffers->size, 1);
    struct buffer *buf = buffer_list_peek(bl_emptybuffers);
    assert_int_equal(BLEN(buf), 0);
}
