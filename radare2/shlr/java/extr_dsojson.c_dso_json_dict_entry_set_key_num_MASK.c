#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  st64 ;
struct TYPE_2__ {int /*<<< orphan*/ * key; } ;
typedef  int /*<<< orphan*/  DsoJsonObj ;
typedef  TYPE_1__ DsoJsonDictEntry ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3 (DsoJsonObj * entry_obj, st64 num) {
	int res = false;
	if (FUNC0 (entry_obj)) {
		DsoJsonDictEntry *entry = (DsoJsonDictEntry *)entry_obj;
		DsoJsonObj *o_key = FUNC1 (num);
		if (entry->key) {
			FUNC2 (entry->key);
		}
		entry->key = o_key;
		res = true;
	}
	return res;
}