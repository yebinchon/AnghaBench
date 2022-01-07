
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpv_node {scalar_t__ format; int u; } ;


 int equal_mpv_value (int *,int *,scalar_t__) ;

bool equal_mpv_node(const struct mpv_node *a, const struct mpv_node *b)
{
    if (a->format != b->format)
        return 0;
    return equal_mpv_value(&a->u, &b->u, a->format);
}
