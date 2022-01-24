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
struct TYPE_10__ {int /*<<< orphan*/  json_list; } ;
struct TYPE_8__ {TYPE_3__* _list; } ;
struct TYPE_9__ {TYPE_1__ val; } ;
typedef  TYPE_2__ DsoJsonObj ;
typedef  TYPE_3__ DsoJsonList ;

/* Variables and functions */
 scalar_t__ DSO_JSON_LIST ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_2__*) ; 

int FUNC2 (DsoJsonObj *list_obj, DsoJsonObj *y) {
	if (FUNC0 (list_obj) == DSO_JSON_LIST) {
		DsoJsonList * list = list_obj->val._list;
		FUNC1 (list->json_list, y);
		return true;
	}
	return false;
}