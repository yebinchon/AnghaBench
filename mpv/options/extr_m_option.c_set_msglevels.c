
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mpv_node {int dummy; } ;
typedef int m_option_t ;
struct TYPE_2__ {int (* set ) (int const*,char***,struct mpv_node*) ;int (* free ) (char***) ;int (* copy ) (int const*,void*,char***) ;} ;


 int check_msg_levels (int ,char**) ;
 TYPE_1__ m_option_type_keyvalue_list ;
 int mp_null_log ;
 int stub1 (int const*,char***,struct mpv_node*) ;
 int stub2 (int const*,void*,char***) ;
 int stub3 (char***) ;

__attribute__((used)) static int set_msglevels(const m_option_t *opt, void *dst,
                             struct mpv_node *src)
{
    char **dst_copy = ((void*)0);
    int r = m_option_type_keyvalue_list.set(opt, &dst_copy, src);
    if (r >= 0)
        r = check_msg_levels(mp_null_log, dst_copy);

    if (r >= 0)
        m_option_type_keyvalue_list.copy(opt, dst, &dst_copy);
    m_option_type_keyvalue_list.free(&dst_copy);
    return r;
}
