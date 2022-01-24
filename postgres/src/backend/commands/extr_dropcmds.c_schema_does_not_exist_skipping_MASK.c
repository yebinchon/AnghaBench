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
struct TYPE_3__ {char* schemaname; } ;
typedef  TYPE_1__ RangeVar ;
typedef  int /*<<< orphan*/  List ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (char*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool
FUNC4(List *object, const char **msg, char **name)
{
	RangeVar   *rel;

	rel = FUNC3(object);

	if (rel->schemaname != NULL &&
		!FUNC1(FUNC0(rel->schemaname)))
	{
		*msg = FUNC2("schema \"%s\" does not exist, skipping");
		*name = rel->schemaname;

		return true;
	}

	return false;
}