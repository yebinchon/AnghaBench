#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* grub_dl_t ;
typedef  TYPE_1__* grub_dl_segment_t ;
typedef  TYPE_1__* grub_dl_dep_t ;
struct TYPE_9__ {scalar_t__ ref_count; struct TYPE_9__* symtab; struct TYPE_9__* name; struct TYPE_9__* addr; struct TYPE_9__* next; struct TYPE_9__* segment; struct TYPE_9__* mod; struct TYPE_9__* dep; int /*<<< orphan*/  (* fini ) () ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 () ; 

int
FUNC5 (grub_dl_t mod)
{
  grub_dl_dep_t dep, depn;
  grub_dl_segment_t seg, segn;

  if (mod->ref_count > 0)
    return 0;

  if (mod->fini)
    (mod->fini) ();

  FUNC0 (mod);
  FUNC2 (mod);

  for (dep = mod->dep; dep; dep = depn)
    {
      depn = dep->next;

      if (! FUNC1 (dep->mod))
	FUNC5 (dep->mod);

      FUNC3 (dep);
    }

  for (seg = mod->segment; seg; seg = segn)
    {
      segn = seg->next;
      FUNC3 (seg->addr);
      FUNC3 (seg);
    }

  FUNC3 (mod->name);
#ifdef GRUB_MODULES_MACHINE_READONLY
  grub_free (mod->symtab);
#endif
  FUNC3 (mod);
  return 1;
}