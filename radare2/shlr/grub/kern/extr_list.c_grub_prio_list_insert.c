
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct grub_prio_list_insert_closure {scalar_t__ inactive; } ;
typedef TYPE_1__* grub_prio_list_t ;
typedef int grub_list_test_t ;
struct TYPE_6__ {int prio; } ;


 int GRUB_AS_LIST (TYPE_1__*) ;
 int GRUB_AS_LIST_P (TYPE_1__**) ;
 int GRUB_PRIO_LIST_FLAG_ACTIVE ;
 int grub_list_insert (int ,int ,int ,struct grub_prio_list_insert_closure*) ;
 scalar_t__ grub_prio_list_insert_test ;

void
grub_prio_list_insert (grub_prio_list_t *head, grub_prio_list_t nitem)
{
  struct grub_prio_list_insert_closure c;

  c.inactive = 0;
  grub_list_insert (GRUB_AS_LIST_P (head), GRUB_AS_LIST (nitem),
      (grub_list_test_t) grub_prio_list_insert_test, &c);
  if (! c.inactive)
    nitem->prio |= GRUB_PRIO_LIST_FLAG_ACTIVE;
}
