
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* grub_dl_t ;
typedef TYPE_2__* grub_dl_dep_t ;
struct TYPE_5__ {TYPE_1__* mod; struct TYPE_5__* next; } ;
struct TYPE_4__ {int ref_count; TYPE_2__* dep; } ;



int
grub_dl_unref (grub_dl_t mod)
{
  grub_dl_dep_t dep;

  for (dep = mod->dep; dep; dep = dep->next)
    grub_dl_unref (dep->mod);

  return --mod->ref_count;
}
