
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct test_buffer_list_aggregate_ctx {TYPE_1__* empty; } ;
struct TYPE_2__ {int head; } ;


 int assert_null (int ) ;
 int buffer_list_aggregate_separator (TYPE_1__*,int,int ) ;
 int testsep ;

__attribute__((used)) static void
test_buffer_list_aggregate_separator_empty(void **state)
{
    struct test_buffer_list_aggregate_ctx *ctx = *state;


    buffer_list_aggregate_separator(ctx->empty, 3, testsep);
    assert_null(ctx->empty->head);
}
