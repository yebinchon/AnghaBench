
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct mpv_node {int dummy; } ;
struct TYPE_6__ {TYPE_1__* type; } ;
typedef TYPE_2__ m_option_t ;
struct TYPE_5__ {int (* get ) (TYPE_2__ const*,void*,struct mpv_node*,void*) ;} ;


 int M_OPT_UNKNOWN ;
 int stub1 (TYPE_2__ const*,void*,struct mpv_node*,void*) ;

__attribute__((used)) static inline int m_option_get_node(const m_option_t *opt, void *ta_parent,
                                    struct mpv_node *dst, void *src)
{
    if (opt->type->get)
        return opt->type->get(opt, ta_parent, dst, src);
    return M_OPT_UNKNOWN;
}
