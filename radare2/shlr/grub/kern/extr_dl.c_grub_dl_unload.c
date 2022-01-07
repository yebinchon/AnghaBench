
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_1__* grub_dl_t ;
typedef TYPE_1__* grub_dl_segment_t ;
typedef TYPE_1__* grub_dl_dep_t ;
struct TYPE_9__ {scalar_t__ ref_count; struct TYPE_9__* symtab; struct TYPE_9__* name; struct TYPE_9__* addr; struct TYPE_9__* next; struct TYPE_9__* segment; struct TYPE_9__* mod; struct TYPE_9__* dep; int (* fini ) () ;} ;


 int grub_dl_remove (TYPE_1__*) ;
 int grub_dl_unref (TYPE_1__*) ;
 int grub_dl_unregister_symbols (TYPE_1__*) ;
 int grub_free (TYPE_1__*) ;
 int stub1 () ;

int
grub_dl_unload (grub_dl_t mod)
{
  grub_dl_dep_t dep, depn;
  grub_dl_segment_t seg, segn;

  if (mod->ref_count > 0)
    return 0;

  if (mod->fini)
    (mod->fini) ();

  grub_dl_remove (mod);
  grub_dl_unregister_symbols (mod);

  for (dep = mod->dep; dep; dep = depn)
    {
      depn = dep->next;

      if (! grub_dl_unref (dep->mod))
 grub_dl_unload (dep->mod);

      grub_free (dep);
    }

  for (seg = mod->segment; seg; seg = segn)
    {
      segn = seg->next;
      grub_free (seg->addr);
      grub_free (seg);
    }

  grub_free (mod->name);



  grub_free (mod);
  return 1;
}
