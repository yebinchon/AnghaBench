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
typedef  int /*<<< orphan*/  RListIter ;
typedef  int /*<<< orphan*/  RList ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(RList *ptmp, char **flags_format_field, int *members_amount, char ***members_name_field) {
	int i = 0, size = 0;

	RListIter *it2 = FUNC4 (ptmp);
	while (FUNC3 (it2)) {
		(void) FUNC2 (it2);
		*members_amount = *members_amount + 1;
	}
	if (!*members_amount) {
		return 0;
	}
	*flags_format_field = (char *) FUNC0 (*members_amount + 1);
	FUNC1 (*flags_format_field, 0, *members_amount + 1);

	size = sizeof *members_name_field * (*members_amount);
	*members_name_field = (char **) FUNC0 (size);
	for (i = 0; i < *members_amount; i++) {
		(*members_name_field)[i] = 0;
	}
	return 1;
}