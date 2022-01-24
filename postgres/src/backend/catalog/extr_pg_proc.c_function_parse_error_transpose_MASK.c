#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ status; char* sourceText; } ;

/* Variables and functions */
 TYPE_1__* ActivePortal ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ PORTAL_ACTIVE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 () ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 
 int FUNC6 (char const*,char const*,int) ; 

bool
FUNC7(const char *prosrc)
{
	int			origerrposition;
	int			newerrposition;
	const char *queryText;

	/*
	 * Nothing to do unless we are dealing with a syntax error that has a
	 * cursor position.
	 *
	 * Some PLs may prefer to report the error position as an internal error
	 * to begin with, so check that too.
	 */
	origerrposition = FUNC2();
	if (origerrposition <= 0)
	{
		origerrposition = FUNC3();
		if (origerrposition <= 0)
			return false;
	}

	/* We can get the original query text from the active portal (hack...) */
	FUNC0(ActivePortal && ActivePortal->status == PORTAL_ACTIVE);
	queryText = ActivePortal->sourceText;

	/* Try to locate the prosrc in the original text */
	newerrposition = FUNC6(prosrc, queryText, origerrposition);

	if (newerrposition > 0)
	{
		/* Successful, so fix error position to reference original query */
		FUNC1(newerrposition);
		/* Get rid of any report of the error as an "internal query" */
		FUNC4(0);
		FUNC5(NULL);
	}
	else
	{
		/*
		 * If unsuccessful, convert the position to an internal position
		 * marker and give the function text as the internal query.
		 */
		FUNC1(0);
		FUNC4(origerrposition);
		FUNC5(prosrc);
	}

	return true;
}