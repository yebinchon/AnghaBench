#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  gdbr_lock; } ;
typedef  TYPE_1__ libgdbr_t ;

/* Variables and functions */
 scalar_t__ _isbreaked ; 
 int /*<<< orphan*/  gdbr_break_process ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 void* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

bool FUNC4(libgdbr_t *g) {
	FUNC0 (gdbr_break_process, g);
	void *bed = FUNC1 ();
	FUNC3 (g->gdbr_lock);
	FUNC2 (bed);
	if (_isbreaked) {
		return false;
	}
	return true;
}