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
typedef  int /*<<< orphan*/  va_list ;
typedef  int /*<<< orphan*/  message ;
typedef  int eLogType ;
struct TYPE_2__ {scalar_t__ verbose; int /*<<< orphan*/ * internal; } ;

/* Variables and functions */
 char* MESSAGE_WIDTH ; 
#define  PG_FATAL 132 
#define  PG_REPORT 131 
#define  PG_STATUS 130 
#define  PG_VERBOSE 129 
#define  PG_WARNING 128 
 int QUERY_ALLOC ; 
 char* FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_1__ log_opts ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/ * stdout ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(eLogType type, const char *fmt, va_list ap)
{
	char		message[QUERY_ALLOC];

	FUNC8(message, sizeof(message), FUNC0(fmt), ap);

	/* PG_VERBOSE and PG_STATUS are only output in verbose mode */
	/* fopen() on log_opts.internal might have failed, so check it */
	if (((type != PG_VERBOSE && type != PG_STATUS) || log_opts.verbose) &&
		log_opts.internal != NULL)
	{
		if (type == PG_STATUS)
			/* status messages need two leading spaces and a newline */
			FUNC4(log_opts.internal, "  %s\n", message);
		else
			FUNC4(log_opts.internal, "%s", message);
		FUNC2(log_opts.internal);
	}

	switch (type)
	{
		case PG_VERBOSE:
			if (log_opts.verbose)
				FUNC6("%s", message);
			break;

		case PG_STATUS:
			/* for output to a display, do leading truncation and append \r */
			if (FUNC5(FUNC3(stdout)))
				/* -2 because we use a 2-space indent */
				FUNC6("  %s%-*.*s\r",
				/* prefix with "..." if we do leading truncation */
					   FUNC7(message) <= MESSAGE_WIDTH - 2 ? "" : "...",
					   MESSAGE_WIDTH - 2, MESSAGE_WIDTH - 2,
				/* optional leading truncation */
					   FUNC7(message) <= MESSAGE_WIDTH - 2 ? message :
					   message + FUNC7(message) - MESSAGE_WIDTH + 3 + 2);
			else
				FUNC6("  %s\n", message);
			break;

		case PG_REPORT:
		case PG_WARNING:
			FUNC6("%s", message);
			break;

		case PG_FATAL:
			FUNC6("\n%s", message);
			FUNC6(FUNC0("Failure, exiting\n"));
			FUNC1(1);
			break;

		default:
			break;
	}
	FUNC2(stdout);
}