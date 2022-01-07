
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hlist_node {int * pprev; int * next; } ;



__attribute__((used)) static inline void INIT_HLIST_NODE(struct hlist_node *h)
{
 h->next = ((void*)0);
 h->pprev = ((void*)0);
}
