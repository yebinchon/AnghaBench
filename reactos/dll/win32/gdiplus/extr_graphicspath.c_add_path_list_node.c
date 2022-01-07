
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {void* Y; void* X; } ;
struct TYPE_7__ {struct TYPE_7__* next; int type; TYPE_1__ pt; } ;
typedef TYPE_2__ path_list_node_t ;
typedef void* REAL ;
typedef int BOOL ;


 TYPE_2__* heap_alloc_zero (int) ;

__attribute__((used)) static path_list_node_t* add_path_list_node(path_list_node_t *node, REAL x, REAL y, BOOL type)
{
    path_list_node_t *new;

    new = heap_alloc_zero(sizeof(path_list_node_t));
    if(!new)
        return ((void*)0);

    new->pt.X = x;
    new->pt.Y = y;
    new->type = type;
    new->next = node->next;
    node->next = new;

    return new;
}
