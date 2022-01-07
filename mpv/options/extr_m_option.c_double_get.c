
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {double double_; int string; } ;
struct mpv_node {TYPE_1__ u; int format; } ;
struct TYPE_5__ {int flags; } ;
typedef TYPE_2__ m_option_t ;


 int MPV_FORMAT_DOUBLE ;
 int MPV_FORMAT_STRING ;
 int M_OPT_DEFAULT_NAN ;
 scalar_t__ isnan (double) ;
 int talloc_strdup (void*,char*) ;

__attribute__((used)) static int double_get(const m_option_t *opt, void *ta_parent,
                      struct mpv_node *dst, void *src)
{
    double f = *(double *)src;
    if (isnan(f) && (opt->flags & M_OPT_DEFAULT_NAN)) {
        dst->format = MPV_FORMAT_STRING;
        dst->u.string = talloc_strdup(ta_parent, "default");
    } else {
        dst->format = MPV_FORMAT_DOUBLE;
        dst->u.double_ = f;
    }
    return 1;
}
