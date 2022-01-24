#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {void* value; int /*<<< orphan*/  key; } ;
struct TYPE_6__ {TYPE_5__* _dict_entry; } ;
struct TYPE_7__ {TYPE_1__ val; int /*<<< orphan*/  info; } ;
typedef  TYPE_2__ DsoJsonObj ;
typedef  int /*<<< orphan*/  DsoJsonDictEntry ;

/* Variables and functions */
 int /*<<< orphan*/  DSO_JSON_DICT_ENTRY ; 
 TYPE_5__* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 void* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

DsoJsonObj * FUNC5 () {
	DsoJsonObj *x = FUNC2 ();
	if (!x) return NULL;
	x->info = FUNC4 (DSO_JSON_DICT_ENTRY);
	x->val._dict_entry = FUNC0 (sizeof (DsoJsonDictEntry), 1);
	if (!x->val._dict_entry) {
		FUNC1 (x);
		return NULL;
	}
	x->val._dict_entry->key = FUNC3 ();
	x->val._dict_entry->value = FUNC2 ();
	return x;
}