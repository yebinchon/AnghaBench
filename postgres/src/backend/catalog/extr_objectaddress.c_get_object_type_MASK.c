#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ objtype; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  scalar_t__ ObjectType ;
typedef  TYPE_1__ ObjectPropertyType ;

/* Variables and functions */
 scalar_t__ OBJECT_TABLE ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

ObjectType
FUNC3(Oid class_id, Oid object_id)
{
	const ObjectPropertyType *prop = FUNC0(class_id);

	if (prop->objtype == OBJECT_TABLE)
	{
		/*
		 * If the property data says it's a table, dig a little deeper to get
		 * the real relation kind, so that callers can produce more precise
		 * error messages.
		 */
		return FUNC2(FUNC1(object_id));
	}
	else
		return prop->objtype;
}