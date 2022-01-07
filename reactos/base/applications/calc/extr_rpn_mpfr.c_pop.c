
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int calc_node_t ;
struct TYPE_5__ {int mf; } ;
struct TYPE_7__ {TYPE_1__ number; } ;
struct TYPE_6__ {TYPE_3__ node; void* next; } ;


 int free (TYPE_2__*) ;
 int mpfr_clear (int ) ;
 int node_copy (int *,TYPE_3__*) ;
 TYPE_2__* stack ;
 int temp ;

__attribute__((used)) static calc_node_t *pop(void)
{
    void *next;

    if (stack == ((void*)0))
        return ((void*)0);


    node_copy(&temp, &stack->node);
    next = stack->next;


    mpfr_clear(stack->node.number.mf);
    free(stack);
    stack = next;

    return &temp;
}
