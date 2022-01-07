
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ (* grub_list_test_t ) (TYPE_1__*,TYPE_1__*,void*) ;
typedef TYPE_1__* grub_list_t ;
struct TYPE_8__ {struct TYPE_8__* next; } ;



void
grub_list_insert (grub_list_t *head, grub_list_t item,
    grub_list_test_t test, void *closure)
{
  grub_list_t *p, q;

  for (p = head, q = *p; q; p = &(q->next), q = q->next)
    if (test (item, q, closure))
      break;

  *p = item;
  item->next = q;
}
