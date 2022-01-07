
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mpv_node_list {size_t num; struct mpv_node* values; } ;
struct TYPE_2__ {struct mpv_node_list* list; } ;
struct mpv_node {scalar_t__ format; TYPE_1__ u; } ;


 scalar_t__ MPV_FORMAT_NODE_ARRAY ;
 int MP_TARRAY_GROW (struct mpv_node_list*,struct mpv_node*,size_t) ;
 int assert (int ) ;
 int node_init (struct mpv_node*,int,struct mpv_node*) ;

struct mpv_node *node_array_add(struct mpv_node *dst, int format)
{
    struct mpv_node_list *list = dst->u.list;
    assert(dst->format == MPV_FORMAT_NODE_ARRAY && dst->u.list);
    MP_TARRAY_GROW(list, list->values, list->num);
    node_init(&list->values[list->num], format, dst);
    return &list->values[list->num++];
}
