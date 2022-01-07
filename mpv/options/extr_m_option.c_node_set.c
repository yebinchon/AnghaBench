
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpv_node {int dummy; } ;
typedef int m_option_t ;


 int copy_node (int const*,void*,struct mpv_node*) ;

__attribute__((used)) static int node_set(const m_option_t *opt, void *dst, struct mpv_node *src)
{
    copy_node(opt, dst, src);
    return 1;
}
