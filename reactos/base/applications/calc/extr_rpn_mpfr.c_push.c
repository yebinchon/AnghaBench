
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int mf; } ;
struct TYPE_10__ {int operation; TYPE_1__ number; } ;
struct TYPE_11__ {struct TYPE_11__* next; TYPE_3__ node; } ;
typedef TYPE_4__ stack_node_t ;
struct TYPE_9__ {int mf; } ;
struct TYPE_12__ {int operation; TYPE_2__ number; } ;
typedef TYPE_5__ calc_node_t ;


 int MPFR_DEFAULT_RND ;
 scalar_t__ malloc (int) ;
 int mpfr_init_set (int ,int ,int ) ;
 TYPE_4__* stack ;

__attribute__((used)) static void push(calc_node_t *op)
{
    stack_node_t *z = (stack_node_t *)malloc(sizeof(stack_node_t));

    mpfr_init_set(z->node.number.mf, op->number.mf, MPFR_DEFAULT_RND);
    z->node.operation = op->operation;
    z->next = stack;
    stack = z;
}
