
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int calc_node_t ;
struct TYPE_3__ {void* next; int node; } ;


 int free (TYPE_1__*) ;
 TYPE_1__* stack ;
 int temp ;

__attribute__((used)) static calc_node_t *pop(void)
{
    void *next;

    if (stack == ((void*)0))
        return ((void*)0);


    temp = stack->node;
    next = stack->next;


    free(stack);
    stack = next;

    return &temp;
}
