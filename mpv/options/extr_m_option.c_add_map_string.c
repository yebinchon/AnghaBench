
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int list; int string; } ;
struct mpv_node {TYPE_1__ u; int format; } ;


 int MPV_FORMAT_STRING ;
 struct mpv_node* add_map_entry (struct mpv_node*,char const*) ;
 int talloc_strdup (int ,char const*) ;

__attribute__((used)) static void add_map_string(struct mpv_node *dst, const char *key, const char *val)
{
    struct mpv_node *entry = add_map_entry(dst, key);
    entry->format = MPV_FORMAT_STRING;
    entry->u.string = talloc_strdup(dst->u.list, val);
}
