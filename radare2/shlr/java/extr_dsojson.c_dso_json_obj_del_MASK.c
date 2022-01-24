#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  _dict_entry; int /*<<< orphan*/  _dict; int /*<<< orphan*/  _str; int /*<<< orphan*/  _num; } ;
struct TYPE_9__ {TYPE_2__ val; TYPE_1__* info; } ;
struct TYPE_7__ {int type; } ;
typedef  TYPE_3__ DsoJsonObj ;

/* Variables and functions */
#define  DSO_JSON_DICT 133 
#define  DSO_JSON_DICT_ENTRY 132 
#define  DSO_JSON_LIST 131 
#define  DSO_JSON_NULL 130 
#define  DSO_JSON_NUM 129 
#define  DSO_JSON_STR 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 

void FUNC6 (DsoJsonObj *dso_obj) {
	if (!dso_obj) return;
	switch (dso_obj->info->type) {
	case DSO_JSON_NULL: /*do nothing */ break;
	case DSO_JSON_NUM: FUNC3 (dso_obj->val._num); break;
	case DSO_JSON_STR: FUNC4 (dso_obj->val._str); break;
	case DSO_JSON_LIST: FUNC2 (dso_obj); break; //->val._list); break;
	case DSO_JSON_DICT: FUNC1 (dso_obj->val._dict); break;
	case DSO_JSON_DICT_ENTRY: FUNC0 (dso_obj->val._dict_entry); break;
	default: break;
	}
#if 0
	//memset (dso_obj, 0, sizeof (DsoJsonObj));
	free (dso_obj);
#endif
}