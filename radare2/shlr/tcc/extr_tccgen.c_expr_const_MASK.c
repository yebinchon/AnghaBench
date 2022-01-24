#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {long long ll; } ;
struct TYPE_4__ {int r; TYPE_1__ c; } ;

/* Variables and functions */
 int VT_CONST ; 
 int VT_LVAL ; 
 int VT_SYM ; 
 int VT_VALMASK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_2__* vtop ; 

long long FUNC2(void) {
	long long c = 0LL;
	FUNC1 ();
	if ((vtop->r & (VT_VALMASK | VT_LVAL | VT_SYM)) != VT_CONST) {
		FUNC0 ("constant expression");
	}
	c = vtop->c.ll;
	return c;
}