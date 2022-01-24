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

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,char const*) ; 

__attribute__((used)) static void
FUNC4(bool useTz, const char *type1, const char *type2)
{
	if (!useTz)
		FUNC0(ERROR,
				(FUNC1(ERRCODE_FEATURE_NOT_SUPPORTED),
				 FUNC3("cannot convert value from %s to %s without timezone usage",
						type1, type2),
				 FUNC2("Use *_tz() function for timezone support.")));
}