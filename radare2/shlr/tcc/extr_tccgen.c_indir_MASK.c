#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int t; } ;
struct TYPE_6__ {scalar_t__ do_bounds_check; } ;
struct TYPE_5__ {int /*<<< orphan*/  r; TYPE_3__ type; } ;

/* Variables and functions */
 int VT_ARRAY ; 
 int VT_BTYPE ; 
 int VT_FUNC ; 
 int /*<<< orphan*/  VT_MUSTBOUND ; 
 int VT_PTR ; 
 int VT_VLA ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_3__* FUNC2 (TYPE_3__*) ; 
 TYPE_2__* tcc_state ; 
 TYPE_1__* vtop ; 

void FUNC3(void) {
	if ((vtop->type.t & VT_BTYPE) != VT_PTR) {
		if ((vtop->type.t & VT_BTYPE) == VT_FUNC) {
			return;
		}
		FUNC0 ("pointer");
	}
	vtop->type = *FUNC2 (&vtop->type);
	/* Arrays and functions are never lvalues */
	if (!(vtop->type.t & VT_ARRAY) && !(vtop->type.t & VT_VLA)
	    && (vtop->type.t & VT_BTYPE) != VT_FUNC) {
		vtop->r |= FUNC1 (vtop->type.t);
		/* if bound checking, the referenced pointer must be checked */
#ifdef CONFIG_TCC_BCHECK
		if (tcc_state->do_bounds_check) {
			vtop->r |= VT_MUSTBOUND;
		}
#endif
	}
}