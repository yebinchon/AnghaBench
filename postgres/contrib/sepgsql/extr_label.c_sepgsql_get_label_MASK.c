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
typedef  int /*<<< orphan*/  security_context_t ;
typedef  int /*<<< orphan*/  int32 ;
struct TYPE_3__ {int /*<<< orphan*/  objectSubId; void* objectId; void* classId; } ;
typedef  void* Oid ;
typedef  TYPE_1__ ObjectAddress ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_INTERNAL_ERROR ; 
 int /*<<< orphan*/  ERROR ; 
 char* FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  SEPGSQL_LABEL_TAG ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 char* FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (char*,int /*<<< orphan*/ *) ; 

char *
FUNC11(Oid classId, Oid objectId, int32 subId)
{
	ObjectAddress object;
	char	   *label;

	object.classId = classId;
	object.objectId = objectId;
	object.objectSubId = subId;

	label = FUNC0(&object, SEPGSQL_LABEL_TAG);
	if (!label || FUNC9((security_context_t) label))
	{
		security_context_t unlabeled;

		if (FUNC10("unlabeled", &unlabeled) < 0)
			FUNC4(ERROR,
					(FUNC5(ERRCODE_INTERNAL_ERROR),
					 FUNC6("SELinux: failed to get initial security label: %m")));
		FUNC3();
		{
			label = FUNC8(unlabeled);
		}
		FUNC2();
		{
			FUNC7(unlabeled);
		}
		FUNC1();
	}
	return label;
}