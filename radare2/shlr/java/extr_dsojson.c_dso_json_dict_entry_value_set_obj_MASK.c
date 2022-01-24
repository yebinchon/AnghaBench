#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_2__* value; } ;
struct TYPE_8__ {TYPE_3__* _dict_entry; } ;
struct TYPE_9__ {TYPE_1__ val; } ;
typedef  TYPE_2__ DsoJsonObj ;
typedef  TYPE_3__ DsoJsonDictEntry ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 

int FUNC2 (DsoJsonObj *entry_obj, DsoJsonObj *obj) {
	if (FUNC0 (entry_obj)) {
		DsoJsonDictEntry *entry = entry_obj->val._dict_entry;
		if (entry->value) FUNC1 (entry->value);
		entry->value = obj;
		return true;
	}
	return false;
}