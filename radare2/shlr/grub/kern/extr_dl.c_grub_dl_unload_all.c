
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* grub_dl_list_t ;
struct TYPE_5__ {TYPE_1__* mod; struct TYPE_5__* next; } ;
struct TYPE_4__ {int ref_count; } ;


 TYPE_2__* grub_dl_head ;
 int grub_dl_unload_unneeded () ;

void
grub_dl_unload_all (void)
{
  while (grub_dl_head)
    {
      grub_dl_list_t p;

      grub_dl_unload_unneeded ();



      for (p = grub_dl_head; p; p = p->next)
 p->mod->ref_count--;
    }
}
