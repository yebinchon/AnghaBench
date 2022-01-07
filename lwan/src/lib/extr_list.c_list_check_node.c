
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_node {struct list_node const* prev; struct list_node* next; } ;


 struct list_node* corrupt (char const*,struct list_node const*,struct list_node const*,unsigned int) ;

struct list_node *list_check_node(const struct list_node *node,
                                  const char *abortstr)
{
    const struct list_node *p, *n;
    unsigned int count = 0;

    for (p = node, n = node->next; n != node; p = n, n = n->next) {
        count++;
        if (n->prev != p)
            return corrupt(abortstr, node, n, count);
    }

    if (node->prev != p)
        return corrupt(abortstr, node, node, 0);

    return (struct list_node *)node;
}
