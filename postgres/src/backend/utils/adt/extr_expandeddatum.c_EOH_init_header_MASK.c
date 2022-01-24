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
struct TYPE_5__ {TYPE_2__* eohptr; } ;
typedef  TYPE_1__ varatt_expanded ;
typedef  int /*<<< orphan*/  ptr ;
struct TYPE_6__ {int /*<<< orphan*/  eoh_ro_ptr; int /*<<< orphan*/  eoh_rw_ptr; int /*<<< orphan*/  eoh_context; int /*<<< orphan*/  const* eoh_methods; int /*<<< orphan*/  vl_len_; } ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  int /*<<< orphan*/  ExpandedObjectMethods ;
typedef  TYPE_2__ ExpandedObjectHeader ;

/* Variables and functions */
 int /*<<< orphan*/  EOH_HEADER_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VARTAG_EXPANDED_RO ; 
 int /*<<< orphan*/  VARTAG_EXPANDED_RW ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*,int) ; 

void
FUNC3(ExpandedObjectHeader *eohptr,
				const ExpandedObjectMethods *methods,
				MemoryContext obj_context)
{
	varatt_expanded ptr;

	eohptr->vl_len_ = EOH_HEADER_MAGIC;
	eohptr->eoh_methods = methods;
	eohptr->eoh_context = obj_context;

	ptr.eohptr = eohptr;

	FUNC0(eohptr->eoh_rw_ptr, VARTAG_EXPANDED_RW);
	FUNC2(FUNC1(eohptr->eoh_rw_ptr), &ptr, sizeof(ptr));

	FUNC0(eohptr->eoh_ro_ptr, VARTAG_EXPANDED_RO);
	FUNC2(FUNC1(eohptr->eoh_ro_ptr), &ptr, sizeof(ptr));
}