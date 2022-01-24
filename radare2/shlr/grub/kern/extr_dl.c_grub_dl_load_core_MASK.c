#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct grub_obj_header {scalar_t__ magic; scalar_t__ version; int mod_deps; } ;
typedef  scalar_t__ grub_size_t ;
typedef  TYPE_1__* grub_dl_t ;
struct TYPE_12__ {int ref_count; struct TYPE_12__* init; struct TYPE_12__* name; scalar_t__ fini; scalar_t__ segment; scalar_t__ dep; } ;

/* Variables and functions */
 int /*<<< orphan*/  GRUB_ERR_BAD_OS ; 
 scalar_t__ GRUB_OBJ_HEADER_MAGIC ; 
 scalar_t__ GRUB_OBJ_HEADER_VERSION ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (TYPE_1__*,struct grub_obj_header*) ; 
 scalar_t__ FUNC4 (TYPE_1__*,char*) ; 
 scalar_t__ FUNC5 (TYPE_1__*,struct grub_obj_header*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,TYPE_1__*,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC9 (int) ; 
 TYPE_1__* FUNC10 (char*) ; 

grub_dl_t
FUNC11 (void *addr, grub_size_t size)
{
  struct grub_obj_header *e;
  grub_dl_t mod;
  char *name;

  FUNC7 ("modules", "module at %p, size 0x%lx\n", addr,
		(unsigned long) size);

  e = addr;
  if ((e->magic != GRUB_OBJ_HEADER_MAGIC) ||
      (e->version != GRUB_OBJ_HEADER_VERSION))
    {
      FUNC8 (GRUB_ERR_BAD_OS, "invalid object file");
      return 0;
    }

  mod = (grub_dl_t) FUNC9 (sizeof (*mod));
  if (! mod)
    return 0;

  name = (char *) addr + e->mod_deps;

  mod->name = FUNC10 (name);
  mod->ref_count = 1;
  mod->dep = 0;
  mod->segment = 0;
  mod->init = 0;
  mod->fini = 0;

  FUNC7 ("modules", "relocating to %p\n", mod);
  if (FUNC4 (mod, name)
      || FUNC3 (mod, e)
      || FUNC5 (mod, e))
    {
      mod->fini = 0;
      FUNC6 (mod);
      return 0;
    }

  FUNC2 (mod);

  FUNC7 ("modules", "module name: %s\n", mod->name);
  FUNC7 ("modules", "init function: %p\n", mod->init);
  FUNC1 (mod);

  if (FUNC0 (mod))
    {
      FUNC6 (mod);
      return 0;
    }

  return mod;
}