#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  security_context_t ;
struct TYPE_4__ {int classId; int /*<<< orphan*/  objectId; int /*<<< orphan*/  objectSubId; } ;
typedef  TYPE_1__ ObjectAddress ;

/* Variables and functions */
#define  DatabaseRelationId 131 
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERRCODE_INVALID_NAME ; 
 int /*<<< orphan*/  ERROR ; 
#define  NamespaceRelationId 130 
#define  ProcedureRelationId 129 
#define  RelationRelationId 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 char const* FUNC3 (TYPE_1__ const*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char const*) ; 

void
FUNC10(const ObjectAddress *object, const char *seclabel)
{
	/*
	 * validate format of the supplied security label, if it is security
	 * context of selinux.
	 */
	if (seclabel &&
		FUNC4((security_context_t) seclabel) < 0)
		FUNC0(ERROR,
				(FUNC1(ERRCODE_INVALID_NAME),
				 FUNC2("SELinux: invalid security label: \"%s\"", seclabel)));

	/*
	 * Do actual permission checks for each object classes
	 */
	switch (object->classId)
	{
		case DatabaseRelationId:
			FUNC6(object->objectId, seclabel);
			break;

		case NamespaceRelationId:
			FUNC9(object->objectId, seclabel);
			break;

		case RelationRelationId:
			if (object->objectSubId == 0)
				FUNC8(object->objectId,
										 seclabel);
			else
				FUNC5(object->objectId,
										  object->objectSubId,
										  seclabel);
			break;

		case ProcedureRelationId:
			FUNC7(object->objectId, seclabel);
			break;

		default:
			FUNC0(ERROR,
					(FUNC1(ERRCODE_FEATURE_NOT_SUPPORTED),
					 FUNC2("sepgsql provider does not support labels on %s",
							FUNC3(object))));
			break;
	}
}