#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  timebuf ;
typedef  int /*<<< orphan*/  time_t ;
struct TYPE_7__ {scalar_t__ pager; } ;
struct TYPE_8__ {char* title; TYPE_1__ topt; } ;
typedef  TYPE_2__ printQueryOpt ;
struct TYPE_10__ {TYPE_2__ popt; } ;
struct TYPE_9__ {scalar_t__ len; int /*<<< orphan*/  data; } ;
typedef  TYPE_3__* PQExpBuffer ;

/* Variables and functions */
 long FUNC0 (long,long) ; 
 int FUNC1 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 char* FUNC2 (char*) ; 
 scalar_t__ cancel_pressed ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (long) ; 
 TYPE_4__ pset ; 
 int sigint_interrupt_enabled ; 
 int /*<<< orphan*/  sigint_interrupt_jmp ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,char const*,int /*<<< orphan*/ ) ; 
 int FUNC11 (char const*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool
FUNC13(PQExpBuffer query_buf, double sleep)
{
	long		sleep_ms = (long) (sleep * 1000);
	printQueryOpt myopt = pset.popt;
	const char *strftime_fmt;
	const char *user_title;
	char	   *title;
	int			title_len;
	int			res = 0;

	if (!query_buf || query_buf->len <= 0)
	{
		FUNC5("\\watch cannot be used with an empty query");
		return false;
	}

	/*
	 * Choose format for timestamps.  We might eventually make this a \pset
	 * option.  In the meantime, using a variable for the format suppresses
	 * overly-anal-retentive gcc warnings about %c being Y2K sensitive.
	 */
	strftime_fmt = "%c";

	/*
	 * Set up rendering options, in particular, disable the pager, because
	 * nobody wants to be prompted while watching the output of 'watch'.
	 */
	myopt.topt.pager = 0;

	/*
	 * If there's a title in the user configuration, make sure we have room
	 * for it in the title buffer.  Allow 128 bytes for the timestamp plus 128
	 * bytes for the rest.
	 */
	user_title = myopt.title;
	title_len = (user_title ? FUNC11(user_title) : 0) + 256;
	title = FUNC6(title_len);

	for (;;)
	{
		time_t		timer;
		char		timebuf[128];
		long		i;

		/*
		 * Prepare title for output.  Note that we intentionally include a
		 * newline at the end of the title; this is somewhat historical but it
		 * makes for reasonably nicely formatted output in simple cases.
		 */
		timer = FUNC12(NULL);
		FUNC10(timebuf, sizeof(timebuf), strftime_fmt, FUNC3(&timer));

		if (user_title)
			FUNC9(title, title_len, FUNC2("%s\t%s (every %gs)\n"),
					 user_title, timebuf, sleep);
		else
			FUNC9(title, title_len, FUNC2("%s (every %gs)\n"),
					 timebuf, sleep);
		myopt.title = title;

		/* Run the query and print out the results */
		res = FUNC1(query_buf->data, &myopt);

		/*
		 * PSQLexecWatch handles the case where we can no longer repeat the
		 * query, and returns 0 or -1.
		 */
		if (res <= 0)
			break;

		/*
		 * Set up cancellation of 'watch' via SIGINT.  We redo this each time
		 * through the loop since it's conceivable something inside
		 * PSQLexecWatch could change sigint_interrupt_jmp.
		 */
		if (FUNC8(sigint_interrupt_jmp, 1) != 0)
			break;

		/*
		 * Enable 'watch' cancellations and wait a while before running the
		 * query again.  Break the sleep into short intervals (at most 1s)
		 * since pg_usleep isn't interruptible on some platforms.
		 */
		sigint_interrupt_enabled = true;
		i = sleep_ms;
		while (i > 0)
		{
			long		s = FUNC0(i, 1000L);

			FUNC7(s * 1000L);
			if (cancel_pressed)
				break;
			i -= s;
		}
		sigint_interrupt_enabled = false;
	}

	FUNC4(title);
	return (res >= 0);
}