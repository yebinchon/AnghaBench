
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ operation; } ;
struct TYPE_5__ {scalar_t__ next; TYPE_1__ node; } ;
typedef TYPE_2__ stack_node_t ;


 scalar_t__ RPN_OPERATOR_PARENT ;
 TYPE_2__* stack ;

int eval_parent_count(void)
{
    stack_node_t *s = stack;
    int n = 0;

    while (s != ((void*)0)) {
        if (s->node.operation == RPN_OPERATOR_PARENT)
            n++;
        s = (stack_node_t *)(s->next);
    }
    return n;
}
