
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct test_buffer_list_aggregate_ctx {TYPE_1__* one_two_three; } ;
struct TYPE_2__ {int size; } ;


 int assert_int_equal (int ,int) ;
 int buffer_list_push (TYPE_1__*,int ) ;
 int teststr4 ;

__attribute__((used)) static void
test_buffer_list_full(void **state)
{
    struct test_buffer_list_aggregate_ctx *ctx = *state;


    assert_int_equal(ctx->one_two_three->size, 3);
    buffer_list_push(ctx->one_two_three, teststr4);
    assert_int_equal(ctx->one_two_three->size, 3);
}
