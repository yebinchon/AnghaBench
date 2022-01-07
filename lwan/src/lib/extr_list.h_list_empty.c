
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct TYPE_2__* next; } ;
struct list_head {TYPE_1__ n; } ;


 int list_debug (struct list_head const*) ;

__attribute__((used)) static inline bool list_empty(const struct list_head *h)
{
 (void)list_debug(h);
 return h->n.next == &h->n;
}
