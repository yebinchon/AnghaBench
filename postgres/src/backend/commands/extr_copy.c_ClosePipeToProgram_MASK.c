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
struct TYPE_3__ {int /*<<< orphan*/  filename; int /*<<< orphan*/  reached_eof; scalar_t__ is_copy_from; int /*<<< orphan*/  copy_file; int /*<<< orphan*/  is_program; } ;
typedef  TYPE_1__* CopyState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERRCODE_EXTERNAL_ROUTINE_EXCEPTION ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  SIGPIPE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 scalar_t__ FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static void
FUNC9(CopyState cstate)
{
	int			pclose_rc;

	FUNC0(cstate->is_program);

	pclose_rc = FUNC1(cstate->copy_file);
	if (pclose_rc == -1)
		FUNC2(ERROR,
				(FUNC4(),
				 FUNC6("could not close pipe to external command: %m")));
	else if (pclose_rc != 0)
	{
		/*
		 * If we ended a COPY FROM PROGRAM before reaching EOF, then it's
		 * expectable for the called program to fail with SIGPIPE, and we
		 * should not report that as an error.  Otherwise, SIGPIPE indicates a
		 * problem.
		 */
		if (cstate->is_copy_from && !cstate->reached_eof &&
			FUNC7(pclose_rc, SIGPIPE))
			return;

		FUNC2(ERROR,
				(FUNC3(ERRCODE_EXTERNAL_ROUTINE_EXCEPTION),
				 FUNC6("program \"%s\" failed",
						cstate->filename),
				 FUNC5("%s", FUNC8(pclose_rc))));
	}
}