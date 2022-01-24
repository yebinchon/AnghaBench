#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ class_oid; } ;
typedef  scalar_t__ Oid ;
typedef  TYPE_1__ ObjectPropertyType ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 TYPE_1__ const* ObjectProperty ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__) ; 
 int FUNC2 (TYPE_1__ const*) ; 

__attribute__((used)) static const ObjectPropertyType *
FUNC3(Oid class_id)
{
	static const ObjectPropertyType *prop_last = NULL;
	int			index;

	/*
	 * A shortcut to speed up multiple consecutive lookups of a particular
	 * object class.
	 */
	if (prop_last && prop_last->class_oid == class_id)
		return prop_last;

	for (index = 0; index < FUNC2(ObjectProperty); index++)
	{
		if (ObjectProperty[index].class_oid == class_id)
		{
			prop_last = &ObjectProperty[index];
			return &ObjectProperty[index];
		}
	}

	FUNC0(ERROR,
			(FUNC1("unrecognized class ID: %u", class_id)));

	return NULL;				/* keep MSC compiler happy */
}