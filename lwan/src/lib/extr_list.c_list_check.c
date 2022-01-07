
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int n; } ;


 int list_check_node (int *,char const*) ;

struct list_head *list_check(const struct list_head *h, const char *abortstr)
{
    if (!list_check_node(&h->n, abortstr))
        return ((void*)0);
    return (struct list_head *)h;
}
