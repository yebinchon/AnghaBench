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
struct TYPE_4__ {int indentLevel; int /*<<< orphan*/  buf; } ;
typedef  TYPE_1__ deparse_context ;
typedef  int /*<<< orphan*/  StringInfo ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int PRETTYINDENT_LIMIT ; 
 int PRETTYINDENT_STD ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(deparse_context *context, const char *str,
					 int indentBefore, int indentAfter, int indentPlus)
{
	StringInfo	buf = context->buf;

	if (FUNC1(context))
	{
		int			indentAmount;

		context->indentLevel += indentBefore;

		/* remove any trailing spaces currently in the buffer ... */
		FUNC5(buf);
		/* ... then add a newline and some spaces */
		FUNC2(buf, '\n');

		if (context->indentLevel < PRETTYINDENT_LIMIT)
			indentAmount = FUNC0(context->indentLevel, 0) + indentPlus;
		else
		{
			/*
			 * If we're indented more than PRETTYINDENT_LIMIT characters, try
			 * to conserve horizontal space by reducing the per-level
			 * indentation.  For best results the scale factor here should
			 * divide all the indent amounts that get added to indentLevel
			 * (PRETTYINDENT_STD, etc).  It's important that the indentation
			 * not grow unboundedly, else deeply-nested trees use O(N^2)
			 * whitespace; so we also wrap modulo PRETTYINDENT_LIMIT.
			 */
			indentAmount = PRETTYINDENT_LIMIT +
				(context->indentLevel - PRETTYINDENT_LIMIT) /
				(PRETTYINDENT_STD / 2);
			indentAmount %= PRETTYINDENT_LIMIT;
			/* scale/wrap logic affects indentLevel, but not indentPlus */
			indentAmount += indentPlus;
		}
		FUNC3(buf, indentAmount);

		FUNC4(buf, str);

		context->indentLevel += indentAfter;
		if (context->indentLevel < 0)
			context->indentLevel = 0;
	}
	else
		FUNC4(buf, str);
}