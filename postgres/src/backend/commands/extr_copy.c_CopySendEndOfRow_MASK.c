#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int copy_dest; int /*<<< orphan*/  binary; int /*<<< orphan*/  is_program; int /*<<< orphan*/  copy_file; TYPE_1__* fe_msgbuf; } ;
struct TYPE_8__ {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__* StringInfo ;
typedef  TYPE_2__* CopyState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
#define  COPY_CALLBACK 131 
#define  COPY_FILE 130 
#define  COPY_NEW_FE 129 
#define  COPY_OLD_FE 128 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  EPIPE ; 
 int /*<<< orphan*/  ERRCODE_CONNECTION_FAILURE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FATAL ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC13(CopyState cstate)
{
	StringInfo	fe_msgbuf = cstate->fe_msgbuf;

	switch (cstate->copy_dest)
	{
		case COPY_FILE:
			if (!cstate->binary)
			{
				/* Default line termination depends on platform */
#ifndef WIN32
				FUNC2(cstate, '\n');
#else
				CopySendString(cstate, "\r\n");
#endif
			}

			if (FUNC9(fe_msgbuf->data, fe_msgbuf->len, 1,
					   cstate->copy_file) != 1 ||
				FUNC8(cstate->copy_file))
			{
				if (cstate->is_program)
				{
					if (errno == EPIPE)
					{
						/*
						 * The pipe will be closed automatically on error at
						 * the end of transaction, but we might get a better
						 * error message from the subprocess' exit code than
						 * just "Broken Pipe"
						 */
						FUNC1(cstate);

						/*
						 * If ClosePipeToProgram() didn't throw an error, the
						 * program terminated normally, but closed the pipe
						 * first. Restore errno, and throw an error.
						 */
						errno = EPIPE;
					}
					FUNC4(ERROR,
							(FUNC6(),
							 FUNC7("could not write to COPY program: %m")));
				}
				else
					FUNC4(ERROR,
							(FUNC6(),
							 FUNC7("could not write to COPY file: %m")));
			}
			break;
		case COPY_OLD_FE:
			/* The FE/BE protocol uses \n as newline for all platforms */
			if (!cstate->binary)
				FUNC2(cstate, '\n');

			if (FUNC10(fe_msgbuf->data, fe_msgbuf->len))
			{
				/* no hope of recovering connection sync, so FATAL */
				FUNC4(FATAL,
						(FUNC5(ERRCODE_CONNECTION_FAILURE),
						 FUNC7("connection lost during COPY to stdout")));
			}
			break;
		case COPY_NEW_FE:
			/* The FE/BE protocol uses \n as newline for all platforms */
			if (!cstate->binary)
				FUNC2(cstate, '\n');

			/* Dump the accumulated row as one CopyData message */
			(void) FUNC11('d', fe_msgbuf->data, fe_msgbuf->len);
			break;
		case COPY_CALLBACK:
			FUNC0(false);		/* Not yet supported. */
			break;
	}

	FUNC12(fe_msgbuf);
}