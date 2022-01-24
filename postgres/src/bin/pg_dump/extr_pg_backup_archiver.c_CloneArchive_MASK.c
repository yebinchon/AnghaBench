#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {TYPE_2__* ropt; scalar_t__ n_errors; } ;
struct TYPE_18__ {scalar_t__ mode; int /*<<< orphan*/ * connection; int /*<<< orphan*/  (* ClonePtr ) (TYPE_4__*) ;TYPE_1__ public; scalar_t__ savedPassword; int /*<<< orphan*/ * currTablespace; int /*<<< orphan*/ * currSchema; int /*<<< orphan*/ * currUser; int /*<<< orphan*/ * connCancel; int /*<<< orphan*/  sqlparse; } ;
struct TYPE_17__ {int /*<<< orphan*/  data; } ;
struct TYPE_16__ {char* pghost; char* pgport; char* username; int /*<<< orphan*/  promptPassword; int /*<<< orphan*/  dbname; } ;
typedef  TYPE_2__ RestoreOptions ;
typedef  TYPE_3__ PQExpBufferData ;
typedef  TYPE_4__ ArchiveHandle ;
typedef  int /*<<< orphan*/  Archive ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 
 char* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TRI_NO ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,char*) ; 
 scalar_t__ archModeRead ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC12 (int) ; 
 scalar_t__ FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*) ; 

ArchiveHandle *
FUNC16(ArchiveHandle *AH)
{
	ArchiveHandle *clone;

	/* Make a "flat" copy */
	clone = (ArchiveHandle *) FUNC12(sizeof(ArchiveHandle));
	FUNC10(clone, AH, sizeof(ArchiveHandle));

	/* Handle format-independent fields */
	FUNC11(&(clone->sqlparse), 0, sizeof(clone->sqlparse));

	/* The clone will have its own connection, so disregard connection state */
	clone->connection = NULL;
	clone->connCancel = NULL;
	clone->currUser = NULL;
	clone->currSchema = NULL;
	clone->currTablespace = NULL;

	/* savedPassword must be local in case we change it while connecting */
	if (clone->savedPassword)
		clone->savedPassword = FUNC13(clone->savedPassword);

	/* clone has its own error count, too */
	clone->public.n_errors = 0;

	/*
	 * Connect our new clone object to the database: In parallel restore the
	 * parent is already disconnected, because we can connect the worker
	 * processes independently to the database (no snapshot sync required). In
	 * parallel backup we clone the parent's existing connection.
	 */
	if (AH->mode == archModeRead)
	{
		RestoreOptions *ropt = AH->public.ropt;

		FUNC0(AH->connection == NULL);

		/* this also sets clone->connection */
		FUNC1((Archive *) clone, ropt->dbname,
						ropt->pghost, ropt->pgport, ropt->username,
						ropt->promptPassword);

		/* re-establish fixed state */
		FUNC6(clone);
	}
	else
	{
		PQExpBufferData connstr;
		char	   *pghost;
		char	   *pgport;
		char	   *username;

		FUNC0(AH->connection != NULL);

		/*
		 * Even though we are technically accessing the parent's database
		 * object here, these functions are fine to be called like that
		 * because all just return a pointer and do not actually send/receive
		 * any data to/from the database.
		 */
		FUNC9(&connstr);
		FUNC8(&connstr, "dbname=");
		FUNC7(&connstr, FUNC2(AH->connection));
		pghost = FUNC3(AH->connection);
		pgport = FUNC4(AH->connection);
		username = FUNC5(AH->connection);

		/* this also sets clone->connection */
		FUNC1((Archive *) clone, connstr.data,
						pghost, pgport, username, TRI_NO);

		FUNC15(&connstr);
		/* setupDumpWorker will fix up connection state */
	}

	/* Let the format-specific code have a chance too */
	clone->ClonePtr(clone);

	FUNC0(clone->connection != NULL);
	return clone;
}