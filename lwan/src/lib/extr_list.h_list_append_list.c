
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct list_node {TYPE_2__* next; } ;
struct TYPE_5__ {struct list_node* prev; } ;
struct list_head {TYPE_2__ n; } ;
struct TYPE_4__ {struct list_node* prev; } ;
struct TYPE_6__ {TYPE_1__ n; } ;


 TYPE_3__* list_debug (struct list_head*) ;
 int list_del (TYPE_2__*) ;
 int list_head_init (struct list_head*) ;

__attribute__((used)) static inline void list_append_list(struct list_head *to,
        struct list_head *from)
{
 struct list_node *from_tail = list_debug(from)->n.prev;
 struct list_node *to_tail = list_debug(to)->n.prev;


 to->n.prev = from_tail;
 from_tail->next = &to->n;
 to_tail->next = &from->n;
 from->n.prev = to_tail;


 list_del(&from->n);
 list_head_init(from);
}
