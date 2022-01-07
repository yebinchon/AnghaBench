
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* grub_dl_t ;
typedef TYPE_2__* grub_dl_list_t ;
struct TYPE_6__ {TYPE_1__* mod; struct TYPE_6__* next; } ;
struct TYPE_5__ {int name; } ;


 TYPE_2__* grub_dl_head ;
 scalar_t__ grub_strcmp (char const*,int ) ;

grub_dl_t
grub_dl_get (const char *name)
{
  grub_dl_list_t l;

  for (l = grub_dl_head; l; l = l->next)
    if (grub_strcmp (name, l->mod->name) == 0)
      return l->mod;

  return 0;
}
