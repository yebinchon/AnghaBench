
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* string; void* list; } ;
struct mpv_node {int format; TYPE_1__ u; } ;






void *node_get_alloc(struct mpv_node *node)
{


    switch (node->format) {
    case 128:
        return node->u.string;
    case 130:
    case 129:
        return node->u.list;
    default:
        return ((void*)0);
    }
}
