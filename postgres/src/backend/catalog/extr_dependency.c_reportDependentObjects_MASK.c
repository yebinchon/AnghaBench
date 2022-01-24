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
struct TYPE_10__ {int flags; int /*<<< orphan*/  const dependee; } ;
struct TYPE_9__ {int numrefs; TYPE_3__* extras; int /*<<< orphan*/ * refs; } ;
struct TYPE_8__ {scalar_t__ len; char* data; } ;
typedef  TYPE_1__ StringInfoData ;
typedef  TYPE_2__ ObjectAddresses ;
typedef  TYPE_3__ ObjectAddressExtra ;
typedef  int /*<<< orphan*/  ObjectAddress ;
typedef  scalar_t__ DropBehavior ;

/* Variables and functions */
 int DEBUG2 ; 
 int DEPFLAG_AUTO ; 
 int DEPFLAG_EXTENSION ; 
 int DEPFLAG_INTERNAL ; 
 int DEPFLAG_IS_PART ; 
 int DEPFLAG_ORIGINAL ; 
 int DEPFLAG_PARTITION ; 
 int DEPFLAG_SUBOBJECT ; 
 scalar_t__ DROP_CASCADE ; 
 scalar_t__ DROP_RESTRICT ; 
 int /*<<< orphan*/  ERRCODE_DEPENDENT_OBJECTS_STILL_EXIST ; 
 int ERROR ; 
 int LOG ; 
 int MAX_REPORTED_DEPS ; 
 int NOTICE ; 
 int PERFORM_DELETION_QUIETLY ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char) ; 
 int client_min_messages ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,int,int) ; 
 char* FUNC11 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int log_min_messages ; 
 int /*<<< orphan*/  FUNC13 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 

__attribute__((used)) static void
FUNC15(const ObjectAddresses *targetObjects,
					   DropBehavior behavior,
					   int flags,
					   const ObjectAddress *origObject)
{
	int			msglevel = (flags & PERFORM_DELETION_QUIETLY) ? DEBUG2 : NOTICE;
	bool		ok = true;
	StringInfoData clientdetail;
	StringInfoData logdetail;
	int			numReportedClient = 0;
	int			numNotReportedClient = 0;
	int			i;

	/*
	 * If we need to delete any partition-dependent objects, make sure that
	 * we're deleting at least one of their partition dependencies, too. That
	 * can be detected by checking that we reached them by a PARTITION
	 * dependency at some point.
	 *
	 * We just report the first such object, as in most cases the only way to
	 * trigger this complaint is to explicitly try to delete one partition of
	 * a partitioned object.
	 */
	for (i = 0; i < targetObjects->numrefs; i++)
	{
		const ObjectAddressExtra *extra = &targetObjects->extras[i];

		if ((extra->flags & DEPFLAG_IS_PART) &&
			!(extra->flags & DEPFLAG_PARTITION))
		{
			const ObjectAddress *object = &targetObjects->refs[i];
			char	   *otherObjDesc = FUNC11(&extra->dependee);

			FUNC3(ERROR,
					(FUNC4(ERRCODE_DEPENDENT_OBJECTS_STILL_EXIST),
					 FUNC8("cannot drop %s because %s requires it",
							FUNC11(object), otherObjDesc),
					 FUNC7("You can drop %s instead.", otherObjDesc)));
		}
	}

	/*
	 * If no error is to be thrown, and the msglevel is too low to be shown to
	 * either client or server log, there's no need to do any of the rest of
	 * the work.
	 *
	 * Note: this code doesn't know all there is to be known about elog
	 * levels, but it works for NOTICE and DEBUG2, which are the only values
	 * msglevel can currently have.  We also assume we are running in a normal
	 * operating environment.
	 */
	if (behavior == DROP_CASCADE &&
		msglevel < client_min_messages &&
		(msglevel < log_min_messages || log_min_messages == LOG))
		return;

	/*
	 * We limit the number of dependencies reported to the client to
	 * MAX_REPORTED_DEPS, since client software may not deal well with
	 * enormous error strings.  The server log always gets a full report.
	 */
#define MAX_REPORTED_DEPS 100

	FUNC12(&clientdetail);
	FUNC12(&logdetail);

	/*
	 * We process the list back to front (ie, in dependency order not deletion
	 * order), since this makes for a more understandable display.
	 */
	for (i = targetObjects->numrefs - 1; i >= 0; i--)
	{
		const ObjectAddress *obj = &targetObjects->refs[i];
		const ObjectAddressExtra *extra = &targetObjects->extras[i];
		char	   *objDesc;

		/* Ignore the original deletion target(s) */
		if (extra->flags & DEPFLAG_ORIGINAL)
			continue;

		/* Also ignore sub-objects; we'll report the whole object elsewhere */
		if (extra->flags & DEPFLAG_SUBOBJECT)
			continue;

		objDesc = FUNC11(obj);

		/*
		 * If, at any stage of the recursive search, we reached the object via
		 * an AUTO, INTERNAL, PARTITION, or EXTENSION dependency, then it's
		 * okay to delete it even in RESTRICT mode.
		 */
		if (extra->flags & (DEPFLAG_AUTO |
							DEPFLAG_INTERNAL |
							DEPFLAG_PARTITION |
							DEPFLAG_EXTENSION))
		{
			/*
			 * auto-cascades are reported at DEBUG2, not msglevel.  We don't
			 * try to combine them with the regular message because the
			 * results are too confusing when client_min_messages and
			 * log_min_messages are different.
			 */
			FUNC3(DEBUG2,
					(FUNC8("drop auto-cascades to %s",
							objDesc)));
		}
		else if (behavior == DROP_RESTRICT)
		{
			char	   *otherDesc = FUNC11(&extra->dependee);

			if (numReportedClient < MAX_REPORTED_DEPS)
			{
				/* separate entries with a newline */
				if (clientdetail.len != 0)
					FUNC2(&clientdetail, '\n');
				FUNC1(&clientdetail, FUNC0("%s depends on %s"),
								 objDesc, otherDesc);
				numReportedClient++;
			}
			else
				numNotReportedClient++;
			/* separate entries with a newline */
			if (logdetail.len != 0)
				FUNC2(&logdetail, '\n');
			FUNC1(&logdetail, FUNC0("%s depends on %s"),
							 objDesc, otherDesc);
			FUNC14(otherDesc);
			ok = false;
		}
		else
		{
			if (numReportedClient < MAX_REPORTED_DEPS)
			{
				/* separate entries with a newline */
				if (clientdetail.len != 0)
					FUNC2(&clientdetail, '\n');
				FUNC1(&clientdetail, FUNC0("drop cascades to %s"),
								 objDesc);
				numReportedClient++;
			}
			else
				numNotReportedClient++;
			/* separate entries with a newline */
			if (logdetail.len != 0)
				FUNC2(&logdetail, '\n');
			FUNC1(&logdetail, FUNC0("drop cascades to %s"),
							 objDesc);
		}

		FUNC14(objDesc);
	}

	if (numNotReportedClient > 0)
		FUNC1(&clientdetail, FUNC13("\nand %d other object "
												 "(see server log for list)",
												 "\nand %d other objects "
												 "(see server log for list)",
												 numNotReportedClient),
						 numNotReportedClient);

	if (!ok)
	{
		if (origObject)
			FUNC3(ERROR,
					(FUNC4(ERRCODE_DEPENDENT_OBJECTS_STILL_EXIST),
					 FUNC8("cannot drop %s because other objects depend on it",
							FUNC11(origObject)),
					 FUNC5("%s", clientdetail.data),
					 FUNC6("%s", logdetail.data),
					 FUNC7("Use DROP ... CASCADE to drop the dependent objects too.")));
		else
			FUNC3(ERROR,
					(FUNC4(ERRCODE_DEPENDENT_OBJECTS_STILL_EXIST),
					 FUNC8("cannot drop desired object(s) because other objects depend on them"),
					 FUNC5("%s", clientdetail.data),
					 FUNC6("%s", logdetail.data),
					 FUNC7("Use DROP ... CASCADE to drop the dependent objects too.")));
	}
	else if (numReportedClient > 1)
	{
		FUNC3(msglevel,
		/* translator: %d always has a value larger than 1 */
				(FUNC10("drop cascades to %d other object",
							   "drop cascades to %d other objects",
							   numReportedClient + numNotReportedClient,
							   numReportedClient + numNotReportedClient),
				 FUNC5("%s", clientdetail.data),
				 FUNC6("%s", logdetail.data)));
	}
	else if (numReportedClient == 1)
	{
		/* we just use the single item as-is */
		FUNC3(msglevel,
				(FUNC9("%s", clientdetail.data)));
	}

	FUNC14(clientdetail.data);
	FUNC14(logdetail.data);
}