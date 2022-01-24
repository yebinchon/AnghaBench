#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {TYPE_2__* value; } ;
struct TYPE_12__ {TYPE_3__* _dict_entry; } ;
struct TYPE_13__ {TYPE_1__ val; } ;
typedef  TYPE_2__ DsoJsonObj ;
typedef  TYPE_3__ DsoJsonDictEntry ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_2__*) ; 
 void* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 

int FUNC6 (DsoJsonObj *entry_obj, DsoJsonObj *obj) {
	if (FUNC0 (entry_obj)) {
		DsoJsonDictEntry *x = entry_obj->val._dict_entry;

		// check to see if the object can be converted to a list
		if (FUNC2 (x->value)) {
			DsoJsonObj *new_list = FUNC4 ();
			FUNC5 (x->value);
			x->value = new_list;
		} else if (!FUNC1 (x->value)) {
			DsoJsonObj *tmp = x->value;
			x->value = FUNC4 ();
			FUNC3 (x->value, tmp);
		}

		if (FUNC1 (x->value)) {
			FUNC3 (x->value, obj);
			return true;
		}
	}
	return false;
}