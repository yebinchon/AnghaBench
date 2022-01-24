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
typedef  int /*<<< orphan*/  DsoJsonObj ;

/* Variables and functions */
 scalar_t__ DSO_JSON_LIST ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4 (DsoJsonObj *list_obj, ut64 y) {
	if (FUNC3 (list_obj) == DSO_JSON_LIST) {
		DsoJsonObj *val = FUNC1 (y);
		int res = FUNC0 (list_obj, val);
		if (!res) FUNC2 (val);
		return res;
	}
	return false;
}