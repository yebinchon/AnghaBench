
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int list; int string; } ;
struct mpv_node {TYPE_1__ u; int format; } ;


 int MPV_FORMAT_NONE ;
 int MPV_FORMAT_STRING ;
 int assert (char const*) ;
 struct mpv_node* node_map_add (struct mpv_node*,char const*,int ) ;
 int talloc_strdup (int ,char const*) ;

void node_map_add_string(struct mpv_node *dst, const char *key, const char *val)
{
    assert(val);

    struct mpv_node *entry = node_map_add(dst, key, MPV_FORMAT_NONE);
    entry->format = MPV_FORMAT_STRING;
    entry->u.string = talloc_strdup(dst->u.list, val);
}
