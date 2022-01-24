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
struct TYPE_4__ {char const* message_id; int /*<<< orphan*/  domain; scalar_t__ funcname; int /*<<< orphan*/  backtrace; int /*<<< orphan*/  assoc_context; int /*<<< orphan*/  lineno; int /*<<< orphan*/  filename; int /*<<< orphan*/  saved_errno; } ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  TYPE_1__ ErrorData ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 TYPE_1__* errordata ; 
 size_t errordata_stack_depth ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  message ; 
 int /*<<< orphan*/  recursion_depth ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 

void
FUNC7(int elevel, const char *fmt,...)
{
	ErrorData  *edata = &errordata[errordata_stack_depth];
	MemoryContext oldcontext;

	FUNC0();

	/*
	 * Do errstart() to see if we actually want to report the message.
	 */
	errordata_stack_depth--;
	errno = edata->saved_errno;
	if (!FUNC4(elevel, edata->filename, edata->lineno, edata->funcname, NULL))
		return;					/* nothing to do */

	/*
	 * Format error message just like errmsg_internal().
	 */
	recursion_depth++;
	oldcontext = FUNC2(edata->assoc_context);

	if (!edata->backtrace &&
		edata->funcname &&
		FUNC5(edata->funcname))
		FUNC6(edata, 2);

	edata->message_id = fmt;
	FUNC1(edata->domain, message, false, false);

	FUNC2(oldcontext);
	recursion_depth--;

	/*
	 * And let errfinish() finish up.
	 */
	FUNC3(0);
}