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
struct TYPE_3__ {char const* message_id; char* message; scalar_t__ domain; int /*<<< orphan*/  saved_errno; } ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  TYPE_1__ ErrorData ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  ErrorContext ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char*) ; 
 int /*<<< orphan*/  message ; 
 scalar_t__ save_format_domain ; 
 int /*<<< orphan*/  save_format_errnumber ; 

char *
FUNC4(const char *fmt,...)
{
	ErrorData	errdata;
	ErrorData  *edata;
	MemoryContext oldcontext;

	/* Initialize a mostly-dummy error frame */
	edata = &errdata;
	FUNC1(edata, 0, sizeof(ErrorData));
	/* the default text domain is the backend's */
	edata->domain = save_format_domain ? save_format_domain : FUNC3("postgres");
	/* set the errno to be used to interpret %m */
	edata->saved_errno = save_format_errnumber;

	oldcontext = FUNC2(ErrorContext);

	edata->message_id = fmt;
	FUNC0(edata->domain, message, false, true);

	FUNC2(oldcontext);

	return edata->message;
}