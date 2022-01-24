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
struct TYPE_4__ {int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  ExtensionVersionInfo ;
typedef  TYPE_1__ ExtensionControlFile ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_INVALID_PARAMETER_VALUE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/ * NIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,char const*,char const*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/ * FUNC4 (char const*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static List *
FUNC6(ExtensionControlFile *control,
					 const char *oldVersion, const char *newVersion)
{
	List	   *result;
	List	   *evi_list;
	ExtensionVersionInfo *evi_start;
	ExtensionVersionInfo *evi_target;

	/* Extract the version update graph from the script directory */
	evi_list = FUNC5(control);

	/* Initialize start and end vertices */
	evi_start = FUNC4(oldVersion, &evi_list);
	evi_target = FUNC4(newVersion, &evi_list);

	/* Find shortest path */
	result = FUNC3(evi_list, evi_start, evi_target, false, false);

	if (result == NIL)
		FUNC0(ERROR,
				(FUNC1(ERRCODE_INVALID_PARAMETER_VALUE),
				 FUNC2("extension \"%s\" has no update path from version \"%s\" to version \"%s\"",
						control->name, oldVersion, newVersion)));

	return result;
}