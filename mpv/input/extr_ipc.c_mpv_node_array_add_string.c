
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {char* string; } ;
struct TYPE_7__ {TYPE_1__ u; int format; } ;
typedef TYPE_2__ mpv_node ;


 int MPV_FORMAT_STRING ;
 int mpv_node_array_add (void*,TYPE_2__*,TYPE_2__*) ;

__attribute__((used)) static void mpv_node_array_add_string(void *ta_parent, mpv_node *src, const char *val)
{
    mpv_node val_node = {.format = MPV_FORMAT_STRING, .u.string = (char *)val};
    mpv_node_array_add(ta_parent, src, &val_node);
}
