
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpv_node {int dummy; } ;
typedef int m_option_t ;


 struct mpv_node VAL (void*) ;
 int dup_node (void*,struct mpv_node*) ;

__attribute__((used)) static int node_get(const m_option_t *opt, void *ta_parent,
                    struct mpv_node *dst, void *src)
{
    *dst = VAL(src);
    dup_node(ta_parent, dst);
    return 1;
}
