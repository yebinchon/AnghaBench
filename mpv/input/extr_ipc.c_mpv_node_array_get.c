
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* list; } ;
struct TYPE_8__ {scalar_t__ format; TYPE_2__ u; } ;
typedef TYPE_3__ mpv_node ;
struct TYPE_6__ {int num; TYPE_3__* values; } ;


 scalar_t__ MPV_FORMAT_NODE_ARRAY ;

__attribute__((used)) static mpv_node *mpv_node_array_get(mpv_node *src, int index)
{
    if (src->format != MPV_FORMAT_NODE_ARRAY)
        return ((void*)0);

    if (src->u.list->num < (index + 1))
        return ((void*)0);

    return &src->u.list->values[index];
}
