
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct TYPE_2__* prev; struct TYPE_2__* next; } ;
struct list_head {TYPE_1__ n; } ;



__attribute__((used)) static inline void list_head_init(struct list_head *h)
{
 h->n.next = h->n.prev = &h->n;
}
