
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int format; } ;
typedef TYPE_1__ mpv_node ;


 int MPV_FORMAT_NONE ;
 int mpv_node_map_add (void*,TYPE_1__*,char const*,TYPE_1__*) ;

__attribute__((used)) static void mpv_node_map_add_null(void *ta_parent, mpv_node *src, const char *key)
{
    mpv_node val_node = {.format = MPV_FORMAT_NONE};
    mpv_node_map_add(ta_parent, src, key, &val_node);
}
