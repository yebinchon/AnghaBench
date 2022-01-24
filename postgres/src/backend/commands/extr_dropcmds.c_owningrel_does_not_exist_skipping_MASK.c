#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  RangeVar ;
typedef  int /*<<< orphan*/  List ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NoLock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 char* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,char const**,char**) ; 

__attribute__((used)) static bool
FUNC9(List *object, const char **msg, char **name)
{
	List	   *parent_object;
	RangeVar   *parent_rel;

	parent_object = FUNC6(FUNC4(object),
								  FUNC5(object) - 1);

	if (FUNC8(parent_object, msg, name))
		return true;

	parent_rel = FUNC7(parent_object);

	if (!FUNC1(FUNC2(parent_rel, NoLock, true)))
	{
		*msg = FUNC3("relation \"%s\" does not exist, skipping");
		*name = FUNC0(parent_object);

		return true;
	}

	return false;
}