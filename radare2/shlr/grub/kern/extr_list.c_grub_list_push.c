
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* grub_list_t ;
struct TYPE_4__ {struct TYPE_4__* next; } ;



void
grub_list_push (grub_list_t *head, grub_list_t item)
{
  item->next = *head;
  *head = item;
}
