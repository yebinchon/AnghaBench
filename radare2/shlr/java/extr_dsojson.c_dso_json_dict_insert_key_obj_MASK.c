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
typedef  int /*<<< orphan*/  RList ;
typedef  int /*<<< orphan*/  DsoJsonObj ;

/* Variables and functions */
 scalar_t__ DSO_JSON_STR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC9 (DsoJsonObj *dict, DsoJsonObj *key, DsoJsonObj *value) {
	int res = false;
	RList* the_list = FUNC4 (dict);
	if (!the_list) return false;
	if (FUNC7 (key) != DSO_JSON_STR) return false;
	if (!value) value = FUNC5 ();
	if (value && key && !FUNC0 (dict, key)) {
		DsoJsonObj *entry = FUNC1 (key, value);
		FUNC8 (the_list, entry);
		res = true;
	//TODO implement the remove key
	} else if (value && key && !FUNC3 (dict, key)) {
		DsoJsonObj *entry = FUNC1 (key, value);
		FUNC8 (the_list, entry);
		res = true;
	} else {
		FUNC6 (value);
		FUNC2 (value);
	}
	return res;
}