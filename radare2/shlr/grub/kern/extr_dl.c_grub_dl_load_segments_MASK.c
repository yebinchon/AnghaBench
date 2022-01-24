#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct grub_obj_segment {scalar_t__ type; int offset; int /*<<< orphan*/  size; int /*<<< orphan*/  align; } ;
struct grub_obj_header {scalar_t__ init_func; scalar_t__ fini_func; struct grub_obj_segment* segments; } ;
typedef  int /*<<< orphan*/  grub_err_t ;
typedef  TYPE_1__* grub_dl_t ;
typedef  TYPE_2__* grub_dl_segment_t ;
struct TYPE_6__ {unsigned int section; struct TYPE_6__* next; int /*<<< orphan*/  size; void* addr; } ;
struct TYPE_5__ {void (* init ) (TYPE_1__*) ;void (* fini ) () ;TYPE_2__* segment; } ;

/* Variables and functions */
 int /*<<< orphan*/  GRUB_ERR_NONE ; 
 scalar_t__ GRUB_OBJ_FUNC_NONE ; 
 scalar_t__ GRUB_OBJ_SEGMENT_END ; 
 int /*<<< orphan*/  grub_errno ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 scalar_t__ FUNC1 (int) ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static grub_err_t
FUNC5 (grub_dl_t mod, struct grub_obj_header *e)
{
  unsigned i;
  struct grub_obj_segment *s;

  for (i = 0, s = &e->segments[0]; s->type != GRUB_OBJ_SEGMENT_END; i++, s++)
    {
      grub_dl_segment_t seg;
      void *addr;

      seg = (grub_dl_segment_t) FUNC1 (sizeof (*seg));
      if (! seg)
	return grub_errno;

      addr = FUNC2 (s->align, s->size);
      if (! addr)
	{
	  FUNC0 (seg);
	  return grub_errno;
	}

      FUNC4 (addr, 0, s->size);
      FUNC3 (addr, (char *) e + s->offset,
		   (s + 1)->offset - s->offset);
      seg->addr = addr;

      seg->size = s->size;
      seg->section = i;
      seg->next = mod->segment;
      mod->segment = seg;

      if (! i)
	{
	  if (e->init_func != GRUB_OBJ_FUNC_NONE)
	    mod->init = (void (*) (grub_dl_t)) ((char *) addr + e->init_func);

	  if (e->fini_func != GRUB_OBJ_FUNC_NONE)
	    mod->fini = (void (*) (void)) ((char *) addr + e->fini_func);
	}
    }

  return GRUB_ERR_NONE;
}