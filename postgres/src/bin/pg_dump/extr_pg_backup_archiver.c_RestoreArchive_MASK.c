#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_47__   TYPE_6__ ;
typedef  struct TYPE_46__   TYPE_5__ ;
typedef  struct TYPE_45__   TYPE_4__ ;
typedef  struct TYPE_44__   TYPE_3__ ;
typedef  struct TYPE_43__   TYPE_38__ ;
typedef  struct TYPE_42__   TYPE_2__ ;
typedef  struct TYPE_41__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  buffer ;
struct TYPE_41__ {int /*<<< orphan*/  oid; } ;
struct TYPE_42__ {int reqs; char* desc; char* dropStmt; struct TYPE_42__* next; TYPE_1__ catalogId; int /*<<< orphan*/  namespace; int /*<<< orphan*/  tag; struct TYPE_42__* prev; scalar_t__ hadDumper; } ;
typedef  TYPE_2__ TocEntry ;
struct TYPE_47__ {int maxRemoteVersion; scalar_t__ minRemoteVersion; } ;
struct TYPE_43__ {int numWorkers; scalar_t__ verbose; TYPE_3__* ropt; } ;
struct TYPE_46__ {scalar_t__ version; scalar_t__ compression; int noTocComments; TYPE_38__ public; int /*<<< orphan*/  stage; int /*<<< orphan*/ * connection; TYPE_2__* toc; int /*<<< orphan*/  (* PrepParallelRestorePtr ) (TYPE_5__*) ;int /*<<< orphan*/ * currSchema; TYPE_2__* currentTE; int /*<<< orphan*/  createDate; scalar_t__ archiveDumpVersion; scalar_t__ archiveRemoteVersion; int /*<<< orphan*/ * tocsByDumpId; int /*<<< orphan*/ * PrintTocDataPtr; int /*<<< orphan*/  (* ReopenPtr ) (TYPE_5__*) ;int /*<<< orphan*/ * ClonePtr; } ;
struct TYPE_45__ {int /*<<< orphan*/  data; } ;
struct TYPE_44__ {int dataOnly; scalar_t__ useDB; scalar_t__ compression; scalar_t__ filename; scalar_t__ single_txn; int /*<<< orphan*/  if_exists; scalar_t__ createDB; scalar_t__ dropSchema; int /*<<< orphan*/  promptPassword; int /*<<< orphan*/  username; int /*<<< orphan*/  pgport; int /*<<< orphan*/  pghost; int /*<<< orphan*/  dbname; } ;
typedef  TYPE_3__ RestoreOptions ;
typedef  int /*<<< orphan*/  ParallelState ;
typedef  TYPE_4__* PQExpBuffer ;
typedef  int /*<<< orphan*/  OutputContext ;
typedef  TYPE_5__ ArchiveHandle ;
typedef  TYPE_6__ Archive ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_38__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 scalar_t__ K_VERS_1_3 ; 
 scalar_t__ K_VERS_1_8 ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_5__*) ; 
 int REQ_DATA ; 
 int REQ_SCHEMA ; 
#define  RESTORE_PASS_ACL 130 
#define  RESTORE_PASS_MAIN 129 
#define  RESTORE_PASS_REFRESH 128 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STAGE_FINALIZING ; 
 int /*<<< orphan*/  STAGE_INITIALIZING ; 
 int /*<<< orphan*/  STAGE_PROCESSING ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_5__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int const FUNC14 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_5__*,char*,...) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_4__*,char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_4__*,char*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_5__*) ; 
 TYPE_4__* FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_5__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (char*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC25 (char*) ; 
 int /*<<< orphan*/  FUNC26 (char*,...) ; 
 int /*<<< orphan*/  FUNC27 (char*,char*) ; 
 char* FUNC28 (char*) ; 
 int /*<<< orphan*/  FUNC29 (TYPE_5__*,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC30 (TYPE_5__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC31 (TYPE_5__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC32 (TYPE_5__*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC33 (char*,int,char*,char*) ; 
 scalar_t__ FUNC34 (char*,char*) ; 
 int /*<<< orphan*/  FUNC35 (char*,char*) ; 
 int FUNC36 (char*) ; 
 scalar_t__ FUNC37 (char*,char*,int) ; 
 char* FUNC38 (char*,char*) ; 
 int /*<<< orphan*/  FUNC39 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC40 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC41 (int /*<<< orphan*/ *) ; 

void
FUNC42(Archive *AHX)
{
	ArchiveHandle *AH = (ArchiveHandle *) AHX;
	RestoreOptions *ropt = AH->public.ropt;
	bool		parallel_mode;
	TocEntry   *te;
	OutputContext sav;

	AH->stage = STAGE_INITIALIZING;

	/*
	 * If we're going to do parallel restore, there are some restrictions.
	 */
	parallel_mode = (AH->public.numWorkers > 1 && ropt->useDB);
	if (parallel_mode)
	{
		/* We haven't got round to making this work for all archive formats */
		if (AH->ClonePtr == NULL || AH->ReopenPtr == NULL)
			FUNC22("parallel restore is not supported with this archive file format");

		/* Doesn't work if the archive represents dependencies as OIDs */
		if (AH->version < K_VERS_1_8)
			FUNC22("parallel restore is not supported with archives made by pre-8.0 pg_dump");

		/*
		 * It's also not gonna work if we can't reopen the input file, so
		 * let's try that immediately.
		 */
		AH->ReopenPtr(AH);
	}

	/*
	 * Make sure we won't need (de)compression we haven't got
	 */
#ifndef HAVE_LIBZ
	if (AH->compression != 0 && AH->PrintTocDataPtr != NULL)
	{
		for (te = AH->toc->next; te != AH->toc; te = te->next)
		{
			if (te->hadDumper && (te->reqs & REQ_DATA) != 0)
				FUNC22("cannot restore from compressed archive (compression not supported in this installation)");
		}
	}
#endif

	/*
	 * Prepare index arrays, so we can assume we have them throughout restore.
	 * It's possible we already did this, though.
	 */
	if (AH->tocsByDumpId == NULL)
		FUNC18(AH);

	/*
	 * If we're using a DB connection, then connect it.
	 */
	if (ropt->useDB)
	{
		FUNC26("connecting to database for restore");
		if (AH->version < K_VERS_1_3)
			FUNC22("direct database connections are not supported in pre-1.3 archives");

		/*
		 * We don't want to guess at whether the dump will successfully
		 * restore; allow the attempt regardless of the version of the restore
		 * target.
		 */
		AHX->minRemoteVersion = 0;
		AHX->maxRemoteVersion = 9999999;

		FUNC2(AHX, ropt->dbname,
						ropt->pghost, ropt->pgport, ropt->username,
						ropt->promptPassword);

		/*
		 * If we're talking to the DB directly, don't send comments since they
		 * obscure SQL when displaying errors
		 */
		AH->noTocComments = 1;
	}

	/*
	 * Work out if we have an implied data-only restore. This can happen if
	 * the dump was data only or if the user has used a toc list to exclude
	 * all of the schema data. All we do is look for schema entries - if none
	 * are found then we set the dataOnly flag.
	 *
	 * We could scan for wanted TABLE entries, but that is not the same as
	 * dataOnly. At this stage, it seems unnecessary (6-Mar-2001).
	 */
	if (!ropt->dataOnly)
	{
		int			impliedDataOnly = 1;

		for (te = AH->toc->next; te != AH->toc; te = te->next)
		{
			if ((te->reqs & REQ_SCHEMA) != 0)
			{					/* It's schema, and it's wanted */
				impliedDataOnly = 0;
				break;
			}
		}
		if (impliedDataOnly)
		{
			ropt->dataOnly = impliedDataOnly;
			FUNC26("implied data-only restore");
		}
	}

	/*
	 * Setup the output file if necessary.
	 */
	sav = FUNC8(AH);
	if (ropt->filename || ropt->compression)
		FUNC9(AH, ropt->filename, ropt->compression);

	FUNC15(AH, "--\n-- PostgreSQL database dump\n--\n\n");

	if (AH->archiveRemoteVersion)
		FUNC15(AH, "-- Dumped from database version %s\n",
				 AH->archiveRemoteVersion);
	if (AH->archiveDumpVersion)
		FUNC15(AH, "-- Dumped by pg_dump version %s\n",
				 AH->archiveDumpVersion);

	FUNC15(AH, "\n");

	if (AH->public.verbose)
		FUNC21(AH, "Started on", AH->createDate);

	if (ropt->single_txn)
	{
		if (AH->connection)
			FUNC10(AHX);
		else
			FUNC15(AH, "BEGIN;\n\n");
	}

	/*
	 * Establish important parameter values right away.
	 */
	FUNC12(AH);

	AH->stage = STAGE_PROCESSING;

	/*
	 * Drop the items at the start, in reverse order
	 */
	if (ropt->dropSchema)
	{
		for (te = AH->toc->prev; te != AH->toc; te = te->prev)
		{
			AH->currentTE = te;

			/*
			 * In createDB mode, issue a DROP *only* for the database as a
			 * whole.  Issuing drops against anything else would be wrong,
			 * because at this point we're connected to the wrong database.
			 * (The DATABASE PROPERTIES entry, if any, should be treated like
			 * the DATABASE entry.)
			 */
			if (ropt->createDB)
			{
				if (FUNC34(te->desc, "DATABASE") != 0 &&
					FUNC34(te->desc, "DATABASE PROPERTIES") != 0)
					continue;
			}

			/* Otherwise, drop anything that's selected and has a dropStmt */
			if (((te->reqs & (REQ_SCHEMA | REQ_DATA)) != 0) && te->dropStmt)
			{
				FUNC26("dropping %s %s", te->desc, te->tag);
				/* Select owner and schema as necessary */
				FUNC11(AH, te);
				FUNC13(AH, te->namespace);

				/*
				 * Now emit the DROP command, if the object has one.  Note we
				 * don't necessarily emit it verbatim; at this point we add an
				 * appropriate IF EXISTS clause, if the user requested it.
				 */
				if (*te->dropStmt != '\0')
				{
					if (!ropt->if_exists)
					{
						/* No --if-exists?	Then just use the original */
						FUNC15(AH, "%s", te->dropStmt);
					}
					else
					{
						/*
						 * Inject an appropriate spelling of "if exists".  For
						 * large objects, we have a separate routine that
						 * knows how to do it, without depending on
						 * te->dropStmt; use that.  For other objects we need
						 * to parse the command.
						 */
						if (FUNC37(te->desc, "BLOB", 4) == 0)
						{
							FUNC4(AH, te->catalogId.oid);
						}
						else
						{
							char	   *dropStmt = FUNC28(te->dropStmt);
							char	   *dropStmtOrig = dropStmt;
							PQExpBuffer ftStmt = FUNC19();

							/*
							 * Need to inject IF EXISTS clause after ALTER
							 * TABLE part in ALTER TABLE .. DROP statement
							 */
							if (FUNC37(dropStmt, "ALTER TABLE", 11) == 0)
							{
								FUNC17(ftStmt,
													 "ALTER TABLE IF EXISTS");
								dropStmt = dropStmt + 11;
							}

							/*
							 * ALTER TABLE..ALTER COLUMN..DROP DEFAULT does
							 * not support the IF EXISTS clause, and therefore
							 * we simply emit the original command for DEFAULT
							 * objects (modulo the adjustment made above).
							 *
							 * Likewise, don't mess with DATABASE PROPERTIES.
							 *
							 * If we used CREATE OR REPLACE VIEW as a means of
							 * quasi-dropping an ON SELECT rule, that should
							 * be emitted unchanged as well.
							 *
							 * For other object types, we need to extract the
							 * first part of the DROP which includes the
							 * object type.  Most of the time this matches
							 * te->desc, so search for that; however for the
							 * different kinds of CONSTRAINTs, we know to
							 * search for hardcoded "DROP CONSTRAINT" instead.
							 */
							if (FUNC34(te->desc, "DEFAULT") == 0 ||
								FUNC34(te->desc, "DATABASE PROPERTIES") == 0 ||
								FUNC37(dropStmt, "CREATE OR REPLACE VIEW", 22) == 0)
								FUNC17(ftStmt, dropStmt);
							else
							{
								char		buffer[40];
								char	   *mark;

								if (FUNC34(te->desc, "CONSTRAINT") == 0 ||
									FUNC34(te->desc, "CHECK CONSTRAINT") == 0 ||
									FUNC34(te->desc, "FK CONSTRAINT") == 0)
									FUNC35(buffer, "DROP CONSTRAINT");
								else
									FUNC33(buffer, sizeof(buffer), "DROP %s",
											 te->desc);

								mark = FUNC38(dropStmt, buffer);

								if (mark)
								{
									*mark = '\0';
									FUNC16(ftStmt, "%s%s IF EXISTS%s",
													  dropStmt, buffer,
													  mark + FUNC36(buffer));
								}
								else
								{
									/* complain and emit unmodified command */
									FUNC27("could not find where to insert IF EXISTS in statement \"%s\"",
												   dropStmtOrig);
									FUNC17(ftStmt, dropStmt);
								}
							}

							FUNC15(AH, "%s", ftStmt->data);

							FUNC20(ftStmt);
							FUNC25(dropStmtOrig);
						}
					}
				}
			}
		}

		/*
		 * _selectOutputSchema may have set currSchema to reflect the effect
		 * of a "SET search_path" command it emitted.  However, by now we may
		 * have dropped that schema; or it might not have existed in the first
		 * place.  In either case the effective value of search_path will not
		 * be what we think.  Forcibly reset currSchema so that we will
		 * re-establish the search_path setting when needed (after creating
		 * the schema).
		 *
		 * If we treated users as pg_dump'able objects then we'd need to reset
		 * currUser here too.
		 */
		if (AH->currSchema)
			FUNC23(AH->currSchema);
		AH->currSchema = NULL;
	}

	if (parallel_mode)
	{
		/*
		 * In parallel mode, turn control over to the parallel-restore logic.
		 */
		ParallelState *pstate;
		TocEntry	pending_list;

		/* The archive format module may need some setup for this */
		if (AH->PrepParallelRestorePtr)
			AH->PrepParallelRestorePtr(AH);

		FUNC24(&pending_list);

		/* This runs PRE_DATA items and then disconnects from the database */
		FUNC31(AH, &pending_list);
		FUNC0(AH->connection == NULL);

		/* ParallelBackupStart() will actually fork the processes */
		pstate = FUNC6(AH);
		FUNC29(AH, pstate, &pending_list);
		FUNC5(AH, pstate);

		/* reconnect the master and see if we missed something */
		FUNC30(AH, &pending_list);
		FUNC0(AH->connection != NULL);
	}
	else
	{
		/*
		 * In serial mode, process everything in three phases: normal items,
		 * then ACLs, then matview refresh items.  We might be able to skip
		 * one or both extra phases in some cases, eg data-only restores.
		 */
		bool		haveACL = false;
		bool		haveRefresh = false;

		for (te = AH->toc->next; te != AH->toc; te = te->next)
		{
			if ((te->reqs & (REQ_SCHEMA | REQ_DATA)) == 0)
				continue;		/* ignore if not to be dumped at all */

			switch (FUNC14(te))
			{
				case RESTORE_PASS_MAIN:
					(void) FUNC32(AH, te, false);
					break;
				case RESTORE_PASS_ACL:
					haveACL = true;
					break;
				case RESTORE_PASS_REFRESH:
					haveRefresh = true;
					break;
			}
		}

		if (haveACL)
		{
			for (te = AH->toc->next; te != AH->toc; te = te->next)
			{
				if ((te->reqs & (REQ_SCHEMA | REQ_DATA)) != 0 &&
					FUNC14(te) == RESTORE_PASS_ACL)
					(void) FUNC32(AH, te, false);
			}
		}

		if (haveRefresh)
		{
			for (te = AH->toc->next; te != AH->toc; te = te->next)
			{
				if ((te->reqs & (REQ_SCHEMA | REQ_DATA)) != 0 &&
					FUNC14(te) == RESTORE_PASS_REFRESH)
					(void) FUNC32(AH, te, false);
			}
		}
	}

	if (ropt->single_txn)
	{
		if (AH->connection)
			FUNC1(AHX);
		else
			FUNC15(AH, "COMMIT;\n\n");
	}

	if (AH->public.verbose)
		FUNC21(AH, "Completed on", FUNC41(NULL));

	FUNC15(AH, "--\n-- PostgreSQL database dump complete\n--\n\n");

	/*
	 * Clean up & we're done.
	 */
	AH->stage = STAGE_FINALIZING;

	if (ropt->filename || ropt->compression)
		FUNC7(AH, sav);

	if (ropt->useDB)
		FUNC3(&AH->public);
}