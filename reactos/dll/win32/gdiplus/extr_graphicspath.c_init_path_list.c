
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {void* Y; void* X; } ;
struct TYPE_6__ {int * next; int type; TYPE_1__ pt; } ;
typedef TYPE_2__ path_list_node_t ;
typedef void* REAL ;
typedef int BOOL ;


 int FALSE ;
 int PathPointTypeStart ;
 int TRUE ;
 TYPE_2__* heap_alloc_zero (int) ;

__attribute__((used)) static BOOL init_path_list(path_list_node_t **node, REAL x, REAL y)
{
    *node = heap_alloc_zero(sizeof(path_list_node_t));
    if(!*node)
        return FALSE;

    (*node)->pt.X = x;
    (*node)->pt.Y = y;
    (*node)->type = PathPointTypeStart;
    (*node)->next = ((void*)0);

    return TRUE;
}
