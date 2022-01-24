#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sverbuf ;
typedef  scalar_t__ backslashResult ;
struct TYPE_9__ {int sversion; } ;
struct TYPE_8__ {char* data; } ;
typedef  int /*<<< orphan*/  PsqlScanState ;
typedef  TYPE_1__* PQExpBuffer ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  EditableObjectType ;

/* Variables and functions */
 int /*<<< orphan*/  EditableFunction ; 
 int /*<<< orphan*/  EditableView ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  OT_WHOLE_LINE ; 
 scalar_t__ PSQL_CMD_ERROR ; 
 scalar_t__ PSQL_CMD_NEWEDIT ; 
 scalar_t__ PSQL_CMD_SKIP_LINE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,int,int*) ; 
 int /*<<< orphan*/  FUNC3 (int,int,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 TYPE_3__ pset ; 
 char* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 char* FUNC12 (char const*,char) ; 
 int FUNC13 (char*) ; 
 scalar_t__ FUNC14 (char const*,char*,int) ; 

__attribute__((used)) static backslashResult
FUNC15(PsqlScanState scan_state, bool active_branch,
				   PQExpBuffer query_buf, bool is_func)
{
	backslashResult status = PSQL_CMD_SKIP_LINE;

	if (active_branch)
	{
		char	   *obj_desc = FUNC9(scan_state,
													  OT_WHOLE_LINE,
													  NULL, true);
		int			lineno = -1;

		if (pset.sversion < (is_func ? 80400 : 70400))
		{
			char		sverbuf[32];

			FUNC3(pset.sversion, false,
								  sverbuf, sizeof(sverbuf));
			if (is_func)
				FUNC8("The server (version %s) does not support editing function source.",
							 sverbuf);
			else
				FUNC8("The server (version %s) does not support editing view definitions.",
							 sverbuf);
			status = PSQL_CMD_ERROR;
		}
		else if (!query_buf)
		{
			FUNC8("no query buffer");
			status = PSQL_CMD_ERROR;
		}
		else
		{
			Oid			obj_oid = InvalidOid;
			EditableObjectType eot = is_func ? EditableFunction : EditableView;

			lineno = FUNC13(obj_desc);
			if (lineno == 0)
			{
				/* error already reported */
				status = PSQL_CMD_ERROR;
			}
			else if (!obj_desc)
			{
				/* set up an empty command to fill in */
				FUNC11(query_buf);
				if (is_func)
					FUNC1(query_buf,
										 "CREATE FUNCTION ( )\n"
										 " RETURNS \n"
										 " LANGUAGE \n"
										 " -- common options:  IMMUTABLE  STABLE  STRICT  SECURITY DEFINER\n"
										 "AS $function$\n"
										 "\n$function$\n");
				else
					FUNC1(query_buf,
										 "CREATE VIEW  AS\n"
										 " SELECT \n"
										 "  -- something...\n");
			}
			else if (!FUNC7(eot, obj_desc, &obj_oid))
			{
				/* error already reported */
				status = PSQL_CMD_ERROR;
			}
			else if (!FUNC5(eot, obj_oid, query_buf))
			{
				/* error already reported */
				status = PSQL_CMD_ERROR;
			}
			else if (is_func && lineno > 0)
			{
				/*
				 * lineno "1" should correspond to the first line of the
				 * function body.  We expect that pg_get_functiondef() will
				 * emit that on a line beginning with "AS ", and that there
				 * can be no such line before the real start of the function
				 * body.  Increment lineno by the number of lines before that
				 * line, so that it becomes relative to the first line of the
				 * function definition.
				 */
				const char *lines = query_buf->data;

				while (*lines != '\0')
				{
					if (FUNC14(lines, "AS ", 3) == 0)
						break;
					lineno++;
					/* find start of next line */
					lines = FUNC12(lines, '\n');
					if (!lines)
						break;
					lines++;
				}
			}
		}

		if (status != PSQL_CMD_ERROR)
		{
			bool		edited = false;

			if (!FUNC2(NULL, query_buf, lineno, &edited))
				status = PSQL_CMD_ERROR;
			else if (!edited)
				FUNC10(FUNC0("No changes"));
			else
				status = PSQL_CMD_NEWEDIT;
		}

		if (obj_desc)
			FUNC4(obj_desc);
	}
	else
		FUNC6(scan_state);

	return status;
}