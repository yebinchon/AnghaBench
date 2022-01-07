
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__* next; int node; } ;
typedef TYPE_1__ stack_node_t ;
typedef int calc_node_t ;


 scalar_t__ malloc (int) ;
 TYPE_1__* stack ;

__attribute__((used)) static void push(calc_node_t *op)
{
    stack_node_t *z = (stack_node_t *)malloc(sizeof(stack_node_t));

    z->node = *op;
    z->next = stack;
    stack = z;
}
