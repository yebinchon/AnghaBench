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
typedef  int /*<<< orphan*/  ObjectAddress ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_INSUFFICIENT_PRIVILEGE ; 
 int /*<<< orphan*/  ERRCODE_INVALID_NAME ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 scalar_t__ FUNC3 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static void
FUNC5(const ObjectAddress *object, const char *seclabel)
{
	if (seclabel == NULL ||
		FUNC3(seclabel, "unclassified") == 0 ||
		FUNC3(seclabel, "classified") == 0)
		return;

	if (FUNC3(seclabel, "secret") == 0 ||
		FUNC3(seclabel, "top secret") == 0)
	{
		if (!FUNC4())
			FUNC0(ERROR,
					(FUNC1(ERRCODE_INSUFFICIENT_PRIVILEGE),
					 FUNC2("only superuser can set '%s' label", seclabel)));
		return;
	}
	FUNC0(ERROR,
			(FUNC1(ERRCODE_INVALID_NAME),
			 FUNC2("'%s' is not a valid security label", seclabel)));
}