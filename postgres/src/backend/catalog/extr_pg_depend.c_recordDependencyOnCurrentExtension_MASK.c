#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ objectSubId; scalar_t__ objectId; int /*<<< orphan*/  classId; } ;
typedef  scalar_t__ Oid ;
typedef  TYPE_1__ ObjectAddress ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ CurrentExtensionObject ; 
 int /*<<< orphan*/  DEPENDENCY_EXTENSION ; 
 int /*<<< orphan*/  ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  ExtensionRelationId ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ creating_extension ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__ const*,TYPE_1__*,int /*<<< orphan*/ ) ; 

void
FUNC9(const ObjectAddress *object,
								   bool isReplace)
{
	/* Only whole objects can be extension members */
	FUNC0(object->objectSubId == 0);

	if (creating_extension)
	{
		ObjectAddress extension;

		/* Only need to check for existing membership if isReplace */
		if (isReplace)
		{
			Oid			oldext;

			oldext = FUNC5(object->classId, object->objectId);
			if (FUNC1(oldext))
			{
				/* If already a member of this extension, nothing to do */
				if (oldext == CurrentExtensionObject)
					return;
				/* Already a member of some other extension, so reject */
				FUNC2(ERROR,
						(FUNC3(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
						 FUNC4("%s is already a member of extension \"%s\"",
								FUNC6(object),
								FUNC7(oldext))));
			}
		}

		/* OK, record it as a member of CurrentExtensionObject */
		extension.classId = ExtensionRelationId;
		extension.objectId = CurrentExtensionObject;
		extension.objectSubId = 0;

		FUNC8(object, &extension, DEPENDENCY_EXTENSION);
	}
}