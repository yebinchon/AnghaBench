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
typedef  int /*<<< orphan*/  List ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ activeCreationNamespace ; 
 int /*<<< orphan*/  activeSearchPath ; 
 scalar_t__ activeTempCreationPending ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 

List *
FUNC5(bool includeImplicit)
{
	List	   *result;

	FUNC4();

	/*
	 * If the temp namespace should be first, force it to exist.  This is so
	 * that callers can trust the result to reflect the actual default
	 * creation namespace.  It's a bit bogus to do this here, since
	 * current_schema() is supposedly a stable function without side-effects,
	 * but the alternatives seem worse.
	 */
	if (activeTempCreationPending)
	{
		FUNC0(true);
		FUNC4();
	}

	result = FUNC2(activeSearchPath);
	if (!includeImplicit)
	{
		while (result && FUNC1(result) != activeCreationNamespace)
			result = FUNC3(result);
	}

	return result;
}