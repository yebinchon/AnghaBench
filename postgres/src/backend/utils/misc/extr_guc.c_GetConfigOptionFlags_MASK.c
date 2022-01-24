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
struct config_generic {int flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_UNDEFINED_OBJECT ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  WARNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 struct config_generic* FUNC3 (char const*,int,int /*<<< orphan*/ ) ; 

int
FUNC4(const char *name, bool missing_ok)
{
	struct config_generic *record;

	record = FUNC3(name, false, WARNING);
	if (record == NULL)
	{
		if (missing_ok)
			return 0;
		FUNC0(ERROR,
				(FUNC1(ERRCODE_UNDEFINED_OBJECT),
				 FUNC2("unrecognized configuration parameter \"%s\"",
						name)));
	}
	return record->flags;
}