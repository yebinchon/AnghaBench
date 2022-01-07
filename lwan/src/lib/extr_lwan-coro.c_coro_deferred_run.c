
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct lwan_array {size_t elements; struct coro_defer* base; } ;
struct TYPE_4__ {int data; int (* func ) (int ) ;} ;
struct TYPE_3__ {int data2; int data1; int (* func ) (int ,int ) ;} ;
struct coro_defer {TYPE_2__ one; TYPE_1__ two; scalar_t__ has_two_args; } ;
struct coro {int defer; } ;


 int stub1 (int ,int ) ;
 int stub2 (int ) ;

void coro_deferred_run(struct coro *coro, size_t generation)
{
    struct lwan_array *array = (struct lwan_array *)&coro->defer;
    struct coro_defer *defers = array->base;

    for (size_t i = array->elements; i != generation; i--) {
        struct coro_defer *defer = &defers[i - 1];

        if (defer->has_two_args)
            defer->two.func(defer->two.data1, defer->two.data2);
        else
            defer->one.func(defer->one.data);
    }

    array->elements = generation;
}
