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
struct TYPE_5__ {scalar_t__ len; } ;
typedef  TYPE_1__* StringInfo ;
typedef  scalar_t__ SharedDependencyType ;
typedef  int SharedDependencyObjectType ;
typedef  int /*<<< orphan*/  ObjectAddress ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
#define  LOCAL_OBJECT 130 
#define  REMOTE_OBJECT 129 
 scalar_t__ SHARED_DEPENDENCY_ACL ; 
 scalar_t__ SHARED_DEPENDENCY_OWNER ; 
 scalar_t__ SHARED_DEPENDENCY_POLICY ; 
#define  SHARED_OBJECT 128 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static void
FUNC7(StringInfo descs,
					   SharedDependencyObjectType type,
					   ObjectAddress *object,
					   SharedDependencyType deptype,
					   int count)
{
	char	   *objdesc = FUNC4(object);

	/* separate entries with a newline */
	if (descs->len != 0)
		FUNC2(descs, '\n');

	switch (type)
	{
		case LOCAL_OBJECT:
		case SHARED_OBJECT:
			if (deptype == SHARED_DEPENDENCY_OWNER)
				FUNC1(descs, FUNC0("owner of %s"), objdesc);
			else if (deptype == SHARED_DEPENDENCY_ACL)
				FUNC1(descs, FUNC0("privileges for %s"), objdesc);
			else if (deptype == SHARED_DEPENDENCY_POLICY)
				FUNC1(descs, FUNC0("target of %s"), objdesc);
			else
				FUNC3(ERROR, "unrecognized dependency type: %d",
					 (int) deptype);
			break;

		case REMOTE_OBJECT:
			/* translator: %s will always be "database %s" */
			FUNC1(descs, FUNC5("%d object in %s",
											 "%d objects in %s",
											 count),
							 count, objdesc);
			break;

		default:
			FUNC3(ERROR, "unrecognized object type: %d", type);
	}

	FUNC6(objdesc);
}