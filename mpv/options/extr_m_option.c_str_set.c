
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* string; } ;
struct mpv_node {scalar_t__ format; TYPE_1__ u; } ;
typedef int m_option_t ;


 scalar_t__ MPV_FORMAT_STRING ;
 int M_OPT_INVALID ;
 int M_OPT_UNKNOWN ;
 int clamp_str (int const*,char**) ;
 int copy_str (int const*,void*,char**) ;

__attribute__((used)) static int str_set(const m_option_t *opt, void *dst, struct mpv_node *src)
{
    if (src->format != MPV_FORMAT_STRING)
        return M_OPT_UNKNOWN;
    char *s = src->u.string;
    int r = s ? clamp_str(opt, &s) : M_OPT_INVALID;
    if (r >= 0)
        copy_str(opt, dst, &s);
    return r;
}
