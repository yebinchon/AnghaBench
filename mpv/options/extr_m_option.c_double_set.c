
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {double int64; double double_; } ;
struct mpv_node {scalar_t__ format; TYPE_1__ u; } ;
typedef int m_option_t ;


 scalar_t__ MPV_FORMAT_DOUBLE ;
 scalar_t__ MPV_FORMAT_INT64 ;
 int M_OPT_OUT_OF_RANGE ;
 int M_OPT_UNKNOWN ;
 scalar_t__ clamp_double (int const*,double*) ;

__attribute__((used)) static int double_set(const m_option_t *opt, void *dst, struct mpv_node *src)
{
    double val;
    if (src->format == MPV_FORMAT_INT64) {

        val = src->u.int64;
    } else if (src->format == MPV_FORMAT_DOUBLE) {
        val = src->u.double_;
    } else {
        return M_OPT_UNKNOWN;
    }
    if (clamp_double(opt, &val) < 0)
        return M_OPT_OUT_OF_RANGE;
    *(double *)dst = val;
    return 1;
}
