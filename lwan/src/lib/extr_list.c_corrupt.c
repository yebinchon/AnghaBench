
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_node {int dummy; } ;


 int abort () ;
 int fprintf (int ,char*,char const*,struct list_node const*,unsigned int,struct list_node const*) ;
 int stderr ;

__attribute__((used)) static void *corrupt(const char *abortstr,
                     const struct list_node *head,
                     const struct list_node *node,
                     unsigned int count)
{
    if (abortstr) {
        fprintf(stderr, "%s: prev corrupt in node %p (%u) of %p\n", abortstr,
                node, count, head);
        abort();
    }
    return ((void*)0);
}
