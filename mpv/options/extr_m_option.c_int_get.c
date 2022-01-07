
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int int64; } ;
struct mpv_node {TYPE_1__ u; int format; } ;
typedef int m_option_t ;


 int MPV_FORMAT_INT64 ;

__attribute__((used)) static int int_get(const m_option_t *opt, void *ta_parent,
                   struct mpv_node *dst, void *src)
{
    dst->format = MPV_FORMAT_INT64;
    dst->u.int64 = *(int *)src;
    return 1;
}
