
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_node {struct list_node* next; } ;
struct list_head {struct list_node n; } ;


 int assert (int) ;
 int list_del (struct list_node*) ;
 int list_empty (struct list_head*) ;

__attribute__((used)) static inline void list_del_from(struct list_head *h, struct list_node *n)
{
        (void)h;



 assert(!list_empty(h));
 list_del(n);
}
