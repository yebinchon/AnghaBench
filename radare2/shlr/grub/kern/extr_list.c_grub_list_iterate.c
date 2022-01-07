
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* grub_list_t ;
typedef scalar_t__ (* grub_list_hook_t ) (TYPE_1__*,void*) ;
struct TYPE_5__ {struct TYPE_5__* next; } ;



int
grub_list_iterate (grub_list_t head, grub_list_hook_t hook, void *closure)
{
  grub_list_t p;

  for (p = head; p; p = p->next)
    if (hook (p, closure))
      return 1;

  return 0;
}
