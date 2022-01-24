#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  curlineno_str ;
struct TYPE_3__ {scalar_t__ data; } ;
struct TYPE_4__ {int /*<<< orphan*/  cur_relname; TYPE_1__ line_buf; int /*<<< orphan*/  need_transcoding; scalar_t__ line_buf_converted; scalar_t__ line_buf_valid; scalar_t__ cur_attname; scalar_t__ cur_attval; scalar_t__ binary; int /*<<< orphan*/  cur_lineno; } ;
typedef  TYPE_2__* CopyState ;

/* Variables and functions */
 char* UINT64_FORMAT ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,char*,...) ; 
 char* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,int /*<<< orphan*/ ) ; 

void
FUNC4(void *arg)
{
	CopyState	cstate = (CopyState) arg;
	char		curlineno_str[32];

	FUNC3(curlineno_str, sizeof(curlineno_str), UINT64_FORMAT,
			 cstate->cur_lineno);

	if (cstate->binary)
	{
		/* can't usefully display the data */
		if (cstate->cur_attname)
			FUNC0("COPY %s, line %s, column %s",
					   cstate->cur_relname, curlineno_str,
					   cstate->cur_attname);
		else
			FUNC0("COPY %s, line %s",
					   cstate->cur_relname, curlineno_str);
	}
	else
	{
		if (cstate->cur_attname && cstate->cur_attval)
		{
			/* error is relevant to a particular column */
			char	   *attval;

			attval = FUNC1(cstate->cur_attval);
			FUNC0("COPY %s, line %s, column %s: \"%s\"",
					   cstate->cur_relname, curlineno_str,
					   cstate->cur_attname, attval);
			FUNC2(attval);
		}
		else if (cstate->cur_attname)
		{
			/* error is relevant to a particular column, value is NULL */
			FUNC0("COPY %s, line %s, column %s: null input",
					   cstate->cur_relname, curlineno_str,
					   cstate->cur_attname);
		}
		else
		{
			/*
			 * Error is relevant to a particular line.
			 *
			 * If line_buf still contains the correct line, and it's already
			 * transcoded, print it. If it's still in a foreign encoding, it's
			 * quite likely that the error is precisely a failure to do
			 * encoding conversion (ie, bad data). We dare not try to convert
			 * it, and at present there's no way to regurgitate it without
			 * conversion. So we have to punt and just report the line number.
			 */
			if (cstate->line_buf_valid &&
				(cstate->line_buf_converted || !cstate->need_transcoding))
			{
				char	   *lineval;

				lineval = FUNC1(cstate->line_buf.data);
				FUNC0("COPY %s, line %s: \"%s\"",
						   cstate->cur_relname, curlineno_str, lineval);
				FUNC2(lineval);
			}
			else
			{
				FUNC0("COPY %s, line %s",
						   cstate->cur_relname, curlineno_str);
			}
		}
	}
}