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
typedef  int /*<<< orphan*/  DsoJsonObj ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,unsigned int) ; 

int FUNC4 (DsoJsonObj *entry_obj, char *str, unsigned int len) {
	int res = false;
	if (FUNC1 (entry_obj)) {
		DsoJsonObj *o_str = FUNC3 (str, len);
		res = FUNC0 (entry_obj, o_str);
		if (!res) FUNC2 (o_str);
	}
	return res;
}