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
struct TYPE_4__ {int t; int /*<<< orphan*/  ref; } ;
typedef  TYPE_1__ CType ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC4(char *typename, int typesize, int meta) {
	CType *new_type = (CType *) FUNC1 (sizeof(CType));
	if (!new_type) {
		return 0;
	}
	new_type->ref = FUNC2 ();
	new_type->t = meta;

	if (!FUNC3 (0, new_type, 0, 0)) {
		return 0;
	}

	FUNC0 (new_type);
	return 1;
}