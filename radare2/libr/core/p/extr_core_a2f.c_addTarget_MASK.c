#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  ut64 ;
typedef  int /*<<< orphan*/  Sdb ;
typedef  int /*<<< orphan*/  RStack ;
typedef  int /*<<< orphan*/  RCore ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

void FUNC7(RCore *core, RStack *stack, Sdb *db, ut64 addr) {
	if (!FUNC5 (db, FUNC0(addr), NULL)) {
		ut64* value = (ut64*) FUNC3 (1 * sizeof (ut64));
		if (!value) {
			FUNC1 ("Failed to allocate memory for address stack\n");
			return;
		}
		*value = addr;
		if (!FUNC4 (stack, (void*)value)) {
			FUNC1 ("Failed to push address on stack\n");
			FUNC2 (value);
			return;
		}
		FUNC6 (db, FUNC0 (addr), 1, 0);
	}
}