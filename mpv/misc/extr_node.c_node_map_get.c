
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
struct TYPE_6__ {int num; TYPE_3__* values; int * keys; } ;


 scalar_t__ MPV_FORMAT_NODE_MAP ;
 scalar_t__ strcmp (char const*,int ) ;

mpv_node *node_map_get(mpv_node *src, const char *key)
{
    if (src->format != MPV_FORMAT_NODE_MAP)
        return ((void*)0);

    for (int i = 0; i < src->u.list->num; i++) {
        if (strcmp(key, src->u.list->keys[i]) == 0)
            return &src->u.list->values[i];
    }

    return ((void*)0);
}
