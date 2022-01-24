#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sverbuf ;
typedef  int /*<<< orphan*/  backslashResult ;
struct TYPE_8__ {int /*<<< orphan*/  topt; } ;
struct TYPE_10__ {int sversion; int /*<<< orphan*/ * queryFout; TYPE_1__ popt; } ;
struct TYPE_9__ {int /*<<< orphan*/  data; } ;
typedef  int /*<<< orphan*/  PsqlScanState ;
typedef  TYPE_2__* PQExpBuffer ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  FILE ;
typedef  int /*<<< orphan*/  EditableObjectType ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  EditableFunction ; 
 int /*<<< orphan*/  EditableView ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  OT_WHOLE_LINE ; 
 int /*<<< orphan*/  PSQL_CMD_ERROR ; 
 int /*<<< orphan*/  PSQL_CMD_SKIP_LINE ; 
 int /*<<< orphan*/ * FUNC1 (int,int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_2__*) ; 
 TYPE_2__* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int,int,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 TYPE_3__ pset ; 
 char* FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * stdout ; 
 int /*<<< orphan*/ * FUNC14 (char const*,char) ; 

__attribute__((used)) static backslashResult
FUNC15(PsqlScanState scan_state, bool active_branch,
				   const char *cmd, bool is_func)
{
	backslashResult status = PSQL_CMD_SKIP_LINE;

	if (active_branch)
	{
		bool		show_linenumbers = (FUNC14(cmd, '+') != NULL);
		PQExpBuffer buf;
		char	   *obj_desc;
		Oid			obj_oid = InvalidOid;
		EditableObjectType eot = is_func ? EditableFunction : EditableView;

		buf = FUNC3();
		obj_desc = FUNC13(scan_state,
										  OT_WHOLE_LINE, NULL, true);
		if (pset.sversion < (is_func ? 80400 : 70400))
		{
			char		sverbuf[32];

			FUNC5(pset.sversion, false,
								  sverbuf, sizeof(sverbuf));
			if (is_func)
				FUNC11("The server (version %s) does not support showing function source.",
							 sverbuf);
			else
				FUNC11("The server (version %s) does not support showing view definitions.",
							 sverbuf);
			status = PSQL_CMD_ERROR;
		}
		else if (!obj_desc)
		{
			if (is_func)
				FUNC11("function name is required");
			else
				FUNC11("view name is required");
			status = PSQL_CMD_ERROR;
		}
		else if (!FUNC10(eot, obj_desc, &obj_oid))
		{
			/* error already reported */
			status = PSQL_CMD_ERROR;
		}
		else if (!FUNC8(eot, obj_oid, buf))
		{
			/* error already reported */
			status = PSQL_CMD_ERROR;
		}
		else
		{
			FILE	   *output;
			bool		is_pager;

			/* Select output stream: stdout, pager, or file */
			if (pset.queryFout == stdout)
			{
				/* count lines in function to see if pager is needed */
				int			lineno = FUNC2(buf);

				output = FUNC1(lineno, &(pset.popt.topt));
				is_pager = true;
			}
			else
			{
				/* use previously set output file, without pager */
				output = pset.queryFout;
				is_pager = false;
			}

			if (show_linenumbers)
			{
				/*
				 * For functions, lineno "1" should correspond to the first
				 * line of the function body.  We expect that
				 * pg_get_functiondef() will emit that on a line beginning
				 * with "AS ", and that there can be no such line before the
				 * real start of the function body.
				 */
				FUNC12(output, buf->data,
									   is_func ? "AS " : NULL);
			}
			else
			{
				/* just send the definition to output */
				FUNC6(buf->data, output);
			}

			if (is_pager)
				FUNC0(output);
		}

		if (obj_desc)
			FUNC7(obj_desc);
		FUNC4(buf);
	}
	else
		FUNC9(scan_state);

	return status;
}