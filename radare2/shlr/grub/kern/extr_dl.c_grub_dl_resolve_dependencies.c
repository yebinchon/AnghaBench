
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int grub_err_t ;
typedef TYPE_1__* grub_dl_t ;
typedef TYPE_2__* grub_dl_dep_t ;
struct TYPE_7__ {struct TYPE_7__* next; TYPE_1__* mod; } ;
struct TYPE_6__ {TYPE_2__* dep; } ;


 int GRUB_ERR_NONE ;
 TYPE_1__* grub_dl_load (char*) ;
 int grub_dl_ref (TYPE_1__*) ;
 int grub_errno ;
 scalar_t__ grub_malloc (int) ;
 scalar_t__ grub_strlen (char*) ;

grub_err_t
grub_dl_resolve_dependencies (grub_dl_t mod, char *name)
{
  while (1)
    {
      grub_dl_t m;
      grub_dl_dep_t dep;

      name += grub_strlen (name) + 1;
      if (! *name)
 return GRUB_ERR_NONE;

      m = grub_dl_load (name);
      if (! m)
 return grub_errno;

      grub_dl_ref (m);

      dep = (grub_dl_dep_t) grub_malloc (sizeof (*dep));
      if (! dep)
 return grub_errno;

      dep->mod = m;
      dep->next = mod->dep;
      mod->dep = dep;
    }
}
