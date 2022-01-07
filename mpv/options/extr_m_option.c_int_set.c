
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpv_node {int dummy; } ;
typedef int m_option_t ;
typedef int int64_t ;


 int INT_MAX ;
 int INT_MIN ;
 int M_OPT_OUT_OF_RANGE ;
 int int64_set (int const*,int*,struct mpv_node*) ;

__attribute__((used)) static int int_set(const m_option_t *opt, void *dst, struct mpv_node *src)
{
    int64_t val;
    int r = int64_set(opt, &val, src);
    if (r >= 0) {
        if (val < INT_MIN || val > INT_MAX)
            return M_OPT_OUT_OF_RANGE;
        *(int *)dst = val;
    }
    return r;
}
