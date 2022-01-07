
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mpv_node_list {size_t num; struct mpv_node* values; struct mpv_node* keys; } ;
struct TYPE_2__ {struct mpv_node_list* list; } ;
struct mpv_node {scalar_t__ format; TYPE_1__ u; } ;


 scalar_t__ MPV_FORMAT_NODE_MAP ;
 int MP_TARRAY_GROW (struct mpv_node_list*,struct mpv_node*,size_t) ;
 int assert (char const*) ;
 int node_init (struct mpv_node*,int,struct mpv_node*) ;
 struct mpv_node talloc_strdup (struct mpv_node_list*,char const*) ;

struct mpv_node *node_map_add(struct mpv_node *dst, const char *key, int format)
{
    assert(key);

    struct mpv_node_list *list = dst->u.list;
    assert(dst->format == MPV_FORMAT_NODE_MAP && dst->u.list);
    MP_TARRAY_GROW(list, list->values, list->num);
    MP_TARRAY_GROW(list, list->keys, list->num);
    list->keys[list->num] = talloc_strdup(list, key);
    node_init(&list->values[list->num], format, dst);
    return &list->values[list->num++];
}
