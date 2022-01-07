
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mpv_node_list {int num; struct mpv_node* values; } ;
struct TYPE_2__ {struct mpv_node_list* list; } ;
struct mpv_node {scalar_t__ format; TYPE_1__ u; } ;


 scalar_t__ MPV_FORMAT_NODE_ARRAY ;
 int MP_TARRAY_GROW (struct mpv_node_list*,struct mpv_node*,int ) ;
 int assert (int ) ;

__attribute__((used)) static struct mpv_node *add_array_entry(struct mpv_node *dst)
{
    struct mpv_node_list *list = dst->u.list;
    assert(dst->format == MPV_FORMAT_NODE_ARRAY&& dst->u.list);
    MP_TARRAY_GROW(list, list->values, list->num);
    return &list->values[list->num++];
}
