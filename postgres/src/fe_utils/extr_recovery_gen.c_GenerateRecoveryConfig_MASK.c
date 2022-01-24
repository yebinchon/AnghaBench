#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {scalar_t__ len; int /*<<< orphan*/  data; } ;
struct TYPE_16__ {char* keyword; char* val; } ;
typedef  TYPE_1__ PQconninfoOption ;
typedef  TYPE_2__ PQExpBufferData ;
typedef  TYPE_2__* PQExpBuffer ;
typedef  int /*<<< orphan*/  PGconn ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ MINIMUM_VERSION_FOR_RECOVERY_GUC ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (TYPE_2__) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,char) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,char*) ; 
 TYPE_2__* FUNC10 () ; 
 char* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 scalar_t__ FUNC16 (char*,char*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*) ; 

PQExpBuffer
FUNC18(PGconn *pgconn, char *replication_slot)
{
	PQconninfoOption *connOptions;
	PQExpBufferData conninfo_buf;
	char	   *escaped;
	PQExpBuffer contents;

	FUNC0(pgconn != NULL);

	contents = FUNC10();
	if (!contents)
	{
		FUNC15("out of memory");
		FUNC12(1);
	}

	/*
	 * In PostgreSQL 12 and newer versions, standby_mode is gone, replaced by
	 * standby.signal to trigger a standby state at recovery.
	 */
	if (FUNC5(pgconn) < MINIMUM_VERSION_FOR_RECOVERY_GUC)
		FUNC9(contents, "standby_mode = 'on'\n");

	connOptions = FUNC3(pgconn);
	if (connOptions == NULL)
	{
		FUNC15("out of memory");
		FUNC12(1);
	}

	FUNC14(&conninfo_buf);
	for (PQconninfoOption *opt = connOptions; opt && opt->keyword; opt++)
	{
		/* Omit empty settings and those libpqwalreceiver overrides. */
		if (FUNC16(opt->keyword, "replication") == 0 ||
			FUNC16(opt->keyword, "dbname") == 0 ||
			FUNC16(opt->keyword, "fallback_application_name") == 0 ||
			(opt->val == NULL) ||
			(opt->val != NULL && opt->val[0] == '\0'))
			continue;

		/* Separate key-value pairs with spaces */
		if (conninfo_buf.len != 0)
			FUNC8(&conninfo_buf, ' ');

		/*
		 * Write "keyword=value" pieces, the value string is escaped and/or
		 * quoted if necessary.
		 */
		FUNC7(&conninfo_buf, "%s=", opt->keyword);
		FUNC6(&conninfo_buf, opt->val);
	}
	if (FUNC2(conninfo_buf))
	{
		FUNC15("out of memory");
		FUNC12(1);
	}

	/*
	 * Escape the connection string, so that it can be put in the config file.
	 * Note that this is different from the escaping of individual connection
	 * options above!
	 */
	escaped = FUNC11(conninfo_buf.data);
	FUNC17(&conninfo_buf);
	FUNC7(contents, "primary_conninfo = '%s'\n", escaped);
	FUNC13(escaped);

	if (replication_slot)
	{
		/* unescaped: ReplicationSlotValidateName allows [a-z0-9_] only */
		FUNC7(contents, "primary_slot_name = '%s'\n",
						  replication_slot);
	}

	if (FUNC1(contents))
	{
		FUNC15("out of memory");
		FUNC12(1);
	}

	FUNC4(connOptions);

	return contents;
}