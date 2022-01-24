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
struct statement {char* command; int /*<<< orphan*/  lineno; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 scalar_t__ FUNC4 (char*) ; 

__attribute__((used)) static bool
FUNC5(int position, int ph_len, struct statement *stmt, char *tobeinserted)
{
	char	   *newcopy;

	if (!(newcopy = (char *) FUNC0(FUNC4(stmt->command)
										+ FUNC4(tobeinserted)
										+ 1, stmt->lineno)))
	{
		FUNC1(tobeinserted);
		return false;
	}

	FUNC3(newcopy, stmt->command);
	FUNC3(newcopy + position - 1, tobeinserted);

	/*
	 * The strange thing in the second argument is the rest of the string from
	 * the old string
	 */
	FUNC2(newcopy,
		   stmt->command
		   + position
		   + ph_len - 1);

	FUNC1(stmt->command);
	stmt->command = newcopy;

	FUNC1(tobeinserted);
	return true;
}