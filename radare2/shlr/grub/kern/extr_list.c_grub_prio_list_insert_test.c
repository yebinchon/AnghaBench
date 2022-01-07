
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct grub_prio_list_insert_closure {int inactive; } ;
typedef TYPE_1__* grub_prio_list_t ;
struct TYPE_4__ {int prio; int name; } ;


 int GRUB_PRIO_LIST_FLAG_ACTIVE ;
 int GRUB_PRIO_LIST_PRIO_MASK ;
 int grub_strcmp (int ,int ) ;

__attribute__((used)) static int
grub_prio_list_insert_test (grub_prio_list_t new_item, grub_prio_list_t item,
       void *closure)
{
  struct grub_prio_list_insert_closure *c = closure;
  int r;

  r = grub_strcmp (new_item->name, item->name);
  if (r)
    return (r < 0);

  if (new_item->prio >= (item->prio & GRUB_PRIO_LIST_PRIO_MASK))
    {
      item->prio &= ~GRUB_PRIO_LIST_FLAG_ACTIVE;
      return 1;
    }

  c->inactive = 1;
  return 0;
}
