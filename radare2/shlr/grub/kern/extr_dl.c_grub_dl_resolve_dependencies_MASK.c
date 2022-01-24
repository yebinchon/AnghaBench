#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  grub_err_t ;
typedef  TYPE_1__* grub_dl_t ;
typedef  TYPE_2__* grub_dl_dep_t ;
struct TYPE_7__ {struct TYPE_7__* next; TYPE_1__* mod; } ;
struct TYPE_6__ {TYPE_2__* dep; } ;

/* Variables and functions */
 int /*<<< orphan*/  GRUB_ERR_NONE ; 
 TYPE_1__* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  grub_errno ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (char*) ; 

grub_err_t
FUNC4 (grub_dl_t mod, char *name)
{
  while (1)
    {
      grub_dl_t m;
      grub_dl_dep_t dep;

      name += FUNC3 (name) + 1;
      if (! *name)
	return GRUB_ERR_NONE;

      m = FUNC0 (name);
      if (! m)
	return grub_errno;

      FUNC1 (m);

      dep = (grub_dl_dep_t) FUNC2 (sizeof (*dep));
      if (! dep)
	return grub_errno;

      dep->mod = m;
      dep->next = mod->dep;
      mod->dep = dep;
    }
}