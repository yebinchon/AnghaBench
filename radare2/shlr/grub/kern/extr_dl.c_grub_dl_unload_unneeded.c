
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* grub_dl_list_t ;
struct TYPE_3__ {struct TYPE_3__* next; int mod; } ;


 TYPE_1__* grub_dl_head ;
 scalar_t__ grub_dl_unload (int ) ;

void
grub_dl_unload_unneeded (void)
{


  grub_dl_list_t p = grub_dl_head;

  while (p)
    {
      if (grub_dl_unload (p->mod))
 {
   p = grub_dl_head;
   continue;
 }

      p = p->next;
    }
}
