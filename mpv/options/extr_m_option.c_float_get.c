
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpv_node {int dummy; } ;
typedef int m_option_t ;


 double VAL (void*) ;
 int double_get (int const*,void*,struct mpv_node*,double*) ;

__attribute__((used)) static int float_get(const m_option_t *opt, void *ta_parent,
                     struct mpv_node *dst, void *src)
{
    double tmp = VAL(src);
    return double_get(opt, ta_parent, dst, &tmp);
}
