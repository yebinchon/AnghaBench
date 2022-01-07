
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mpv_node {int dummy; } ;
struct TYPE_3__ {double double_; } ;
struct TYPE_4__ {TYPE_1__ u; } ;


 int MPV_FORMAT_DOUBLE ;
 TYPE_2__* node_map_add (struct mpv_node*,char const*,int ) ;

void node_map_add_double(struct mpv_node *dst, const char *key, double v)
{
    node_map_add(dst, key, MPV_FORMAT_DOUBLE)->u.double_ = v;
}
