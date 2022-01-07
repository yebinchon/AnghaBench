
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int string; } ;
struct mpv_node {scalar_t__ format; TYPE_1__ u; } ;
typedef int m_option_t ;


 scalar_t__ HAS_NOPTS (int const*) ;
 scalar_t__ MPV_FORMAT_STRING ;
 double MP_NOPTS_VALUE ;
 int double_set (int const*,void*,struct mpv_node*) ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static int time_set(const m_option_t *opt, void *dst, struct mpv_node *src)
{
    if (HAS_NOPTS(opt) && src->format == MPV_FORMAT_STRING) {
        if (strcmp(src->u.string, "no") == 0) {
            *(double *)dst = MP_NOPTS_VALUE;
            return 1;
        }
    }
    return double_set(opt, dst, src);
}
