
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mpv_node {int dummy; } ;
typedef int int64_t ;
struct TYPE_3__ {int int64; } ;
struct TYPE_4__ {TYPE_1__ u; } ;


 int MPV_FORMAT_INT64 ;
 TYPE_2__* node_map_add (struct mpv_node*,char const*,int ) ;

void node_map_add_int64(struct mpv_node *dst, const char *key, int64_t v)
{
    node_map_add(dst, key, MPV_FORMAT_INT64)->u.int64 = v;
}
