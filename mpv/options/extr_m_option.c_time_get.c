
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int string; } ;
struct mpv_node {TYPE_1__ u; int format; } ;
typedef int m_option_t ;


 scalar_t__ HAS_NOPTS (int const*) ;
 int MPV_FORMAT_STRING ;
 double MP_NOPTS_VALUE ;
 int double_get (int const*,void*,struct mpv_node*,void*) ;
 int talloc_strdup (void*,char*) ;

__attribute__((used)) static int time_get(const m_option_t *opt, void *ta_parent,
                      struct mpv_node *dst, void *src)
{
    if (HAS_NOPTS(opt) && *(double *)src == MP_NOPTS_VALUE) {
        dst->format = MPV_FORMAT_STRING;
        dst->u.string = talloc_strdup(ta_parent, "no");
        return 1;
    }
    return double_get(opt, ta_parent, dst, src);
}
