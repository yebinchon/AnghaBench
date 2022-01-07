
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int flag; } ;
struct TYPE_7__ {TYPE_1__ u; int format; } ;
typedef TYPE_2__ mpv_node ;


 int MPV_FORMAT_FLAG ;
 int mpv_node_map_add (void*,TYPE_2__*,char const*,TYPE_2__*) ;

__attribute__((used)) static void mpv_node_map_add_flag(void *ta_parent, mpv_node *src, const char *key, bool val)
{
    mpv_node val_node = {.format = MPV_FORMAT_FLAG, .u.flag = val};

    mpv_node_map_add(ta_parent, src, key, &val_node);
}
