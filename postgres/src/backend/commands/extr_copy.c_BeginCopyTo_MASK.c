#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct stat {int /*<<< orphan*/  st_mode; } ;
typedef  int mode_t ;
struct TYPE_11__ {int is_program; int /*<<< orphan*/  filename; int /*<<< orphan*/ * copy_file; int /*<<< orphan*/  copycontext; } ;
struct TYPE_10__ {TYPE_1__* rd_rel; } ;
struct TYPE_9__ {scalar_t__ relkind; } ;
typedef  TYPE_2__* Relation ;
typedef  int /*<<< orphan*/  RawStmt ;
typedef  int /*<<< orphan*/  ParseState ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  int /*<<< orphan*/  List ;
typedef  TYPE_3__* CopyState ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ *,int,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ DestRemote ; 
 int EACCES ; 
 int ENOENT ; 
 int /*<<< orphan*/  ERRCODE_INVALID_NAME ; 
 int /*<<< orphan*/  ERRCODE_WRONG_OBJECT_TYPE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PG_BINARY_W ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ RELKIND_FOREIGN_TABLE ; 
 scalar_t__ RELKIND_MATVIEW ; 
 scalar_t__ RELKIND_PARTITIONED_TABLE ; 
 scalar_t__ RELKIND_RELATION ; 
 scalar_t__ RELKIND_SEQUENCE ; 
 scalar_t__ RELKIND_VIEW ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int S_IWGRP ; 
 int S_IWOTH ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (char*,...) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,struct stat*) ; 
 int /*<<< orphan*/  FUNC17 (char const*) ; 
 int /*<<< orphan*/  FUNC18 (char const*) ; 
 int /*<<< orphan*/ * stdout ; 
 int FUNC19 (int) ; 
 scalar_t__ whereToSendOutput ; 

__attribute__((used)) static CopyState
FUNC20(ParseState *pstate,
			Relation rel,
			RawStmt *query,
			Oid queryRelId,
			const char *filename,
			bool is_program,
			List *attnamelist,
			List *options)
{
	CopyState	cstate;
	bool		pipe = (filename == NULL);
	MemoryContext oldcontext;

	if (rel != NULL && rel->rd_rel->relkind != RELKIND_RELATION)
	{
		if (rel->rd_rel->relkind == RELKIND_VIEW)
			FUNC10(ERROR,
					(FUNC11(ERRCODE_WRONG_OBJECT_TYPE),
					 FUNC14("cannot copy from view \"%s\"",
							FUNC8(rel)),
					 FUNC13("Try the COPY (SELECT ...) TO variant.")));
		else if (rel->rd_rel->relkind == RELKIND_MATVIEW)
			FUNC10(ERROR,
					(FUNC11(ERRCODE_WRONG_OBJECT_TYPE),
					 FUNC14("cannot copy from materialized view \"%s\"",
							FUNC8(rel)),
					 FUNC13("Try the COPY (SELECT ...) TO variant.")));
		else if (rel->rd_rel->relkind == RELKIND_FOREIGN_TABLE)
			FUNC10(ERROR,
					(FUNC11(ERRCODE_WRONG_OBJECT_TYPE),
					 FUNC14("cannot copy from foreign table \"%s\"",
							FUNC8(rel)),
					 FUNC13("Try the COPY (SELECT ...) TO variant.")));
		else if (rel->rd_rel->relkind == RELKIND_SEQUENCE)
			FUNC10(ERROR,
					(FUNC11(ERRCODE_WRONG_OBJECT_TYPE),
					 FUNC14("cannot copy from sequence \"%s\"",
							FUNC8(rel))));
		else if (rel->rd_rel->relkind == RELKIND_PARTITIONED_TABLE)
			FUNC10(ERROR,
					(FUNC11(ERRCODE_WRONG_OBJECT_TYPE),
					 FUNC14("cannot copy from partitioned table \"%s\"",
							FUNC8(rel)),
					 FUNC13("Try the COPY (SELECT ...) TO variant.")));
		else
			FUNC10(ERROR,
					(FUNC11(ERRCODE_WRONG_OBJECT_TYPE),
					 FUNC14("cannot copy from non-table relation \"%s\"",
							FUNC8(rel))));
	}

	cstate = FUNC2(pstate, false, rel, query, queryRelId, attnamelist,
					   options);
	oldcontext = FUNC3(cstate->copycontext);

	if (pipe)
	{
		FUNC1(!is_program);	/* the grammar does not allow this */
		if (whereToSendOutput != DestRemote)
			cstate->copy_file = stdout;
	}
	else
	{
		cstate->filename = FUNC18(filename);
		cstate->is_program = is_program;

		if (is_program)
		{
			cstate->copy_file = FUNC4(cstate->filename, PG_BINARY_W);
			if (cstate->copy_file == NULL)
				FUNC10(ERROR,
						(FUNC12(),
						 FUNC14("could not execute command \"%s\": %m",
								cstate->filename)));
		}
		else
		{
			mode_t		oumask; /* Pre-existing umask value */
			struct stat st;

			/*
			 * Prevent write to relative path ... too easy to shoot oneself in
			 * the foot by overwriting a database file ...
			 */
			if (!FUNC17(filename))
				FUNC10(ERROR,
						(FUNC11(ERRCODE_INVALID_NAME),
						 FUNC14("relative path not allowed for COPY to file")));

			oumask = FUNC19(S_IWGRP | S_IWOTH);
			FUNC7();
			{
				cstate->copy_file = FUNC0(cstate->filename, PG_BINARY_W);
			}
			FUNC6();
			{
				FUNC19(oumask);
			}
			FUNC5();
			if (cstate->copy_file == NULL)
			{
				/* copy errno because ereport subfunctions might change it */
				int			save_errno = errno;

				FUNC10(ERROR,
						(FUNC12(),
						 FUNC14("could not open file \"%s\" for writing: %m",
								cstate->filename),
						 (save_errno == ENOENT || save_errno == EACCES) ?
						 FUNC13("COPY TO instructs the PostgreSQL server process to write a file. "
								 "You may want a client-side facility such as psql's \\copy.") : 0));
			}

			if (FUNC16(FUNC15(cstate->copy_file), &st))
				FUNC10(ERROR,
						(FUNC12(),
						 FUNC14("could not stat file \"%s\": %m",
								cstate->filename)));

			if (FUNC9(st.st_mode))
				FUNC10(ERROR,
						(FUNC11(ERRCODE_WRONG_OBJECT_TYPE),
						 FUNC14("\"%s\" is a directory", cstate->filename)));
		}
	}

	FUNC3(oldcontext);

	return cstate;
}