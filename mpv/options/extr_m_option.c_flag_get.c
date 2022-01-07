
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flag; } ;
struct mpv_node {TYPE_1__ u; int format; } ;
typedef int m_option_t ;


 int MPV_FORMAT_FLAG ;
 int VAL (void*) ;

__attribute__((used)) static int flag_get(const m_option_t *opt, void *ta_parent,
                    struct mpv_node *dst, void *src)
{
    dst->format = MPV_FORMAT_FLAG;
    dst->u.flag = !!VAL(src);
    return 1;
}
