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
typedef  int /*<<< orphan*/  text ;
typedef  int /*<<< orphan*/  PLpgSQL_execstate ;
typedef  int /*<<< orphan*/  PLpgSQL_datum ;
typedef  int /*<<< orphan*/  MemoryContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TEXTOID ; 
 int /*<<< orphan*/ * FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(PLpgSQL_execstate *estate, PLpgSQL_datum *target,
					 const char *str)
{
	text	   *value;
	MemoryContext oldcontext;

	/* Use eval_mcontext for short-lived text value */
	oldcontext = FUNC0(FUNC4(estate));
	if (str != NULL)
		value = FUNC2(str);
	else
		value = FUNC2("");
	FUNC0(oldcontext);

	FUNC3(estate, target, FUNC1(value), false,
					  TEXTOID, -1);
}