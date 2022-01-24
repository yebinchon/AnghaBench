#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {char* name; TYPE_2__* namespace; } ;
struct TYPE_17__ {TYPE_3__ dobj; } ;
typedef  TYPE_4__ TableInfo ;
struct TYPE_18__ {char const* filtercond; TYPE_4__* tdtable; } ;
typedef  TYPE_5__ TableDataInfo ;
struct TYPE_19__ {char* data; int len; } ;
struct TYPE_14__ {int /*<<< orphan*/  name; } ;
struct TYPE_15__ {TYPE_1__ dobj; } ;
typedef  TYPE_6__* PQExpBuffer ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  int /*<<< orphan*/  PGconn ;
typedef  int /*<<< orphan*/  Archive ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ PGRES_COMMAND_OK ; 
 int /*<<< orphan*/  PGRES_COPY_OUT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 char const* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (int /*<<< orphan*/ *,char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_6__*,char*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_6__*,char const*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*) ; 
 TYPE_6__* FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 char* FUNC15 (TYPE_4__*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC17 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC18 (char*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC19 (char*,char const*) ; 
 int FUNC20 (char const*) ; 

__attribute__((used)) static int
FUNC21(Archive *fout, void *dcontext)
{
	TableDataInfo *tdinfo = (TableDataInfo *) dcontext;
	TableInfo  *tbinfo = tdinfo->tdtable;
	const char *classname = tbinfo->dobj.name;
	PQExpBuffer q = FUNC12();

	/*
	 * Note: can't use getThreadLocalPQExpBuffer() here, we're calling fmtId
	 * which uses it already.
	 */
	PQExpBuffer clistBuf = FUNC12();
	PGconn	   *conn = FUNC1(fout);
	PGresult   *res;
	int			ret;
	char	   *copybuf;
	const char *column_list;

	FUNC18("dumping contents of table \"%s.%s\"",
				tbinfo->dobj.namespace->dobj.name, classname);

	/*
	 * Specify the column list explicitly so that we have no possibility of
	 * retrieving data in the wrong column order.  (The default column
	 * ordering of COPY will not be what we want in certain corner cases
	 * involving ADD COLUMN and inheritance.)
	 */
	column_list = FUNC15(tbinfo, clistBuf);

	if (tdinfo->filtercond)
	{
		/* Note: this syntax is only supported in 8.2 and up */
		FUNC10(q, "COPY (SELECT ");
		/* klugery to get rid of parens in column list */
		if (FUNC20(column_list) > 2)
		{
			FUNC10(q, column_list + 1);
			q->data[q->len - 1] = ' ';
		}
		else
			FUNC10(q, "* ");
		FUNC9(q, "FROM %s %s) TO stdout;",
						  FUNC16(tbinfo),
						  tdinfo->filtercond);
	}
	else
	{
		FUNC9(q, "COPY %s %s TO stdout;",
						  FUNC16(tbinfo),
						  column_list);
	}
	res = FUNC0(fout, q->data, PGRES_COPY_OUT);
	FUNC2(res);
	FUNC13(clistBuf);

	for (;;)
	{
		ret = FUNC5(conn, &copybuf, 0);

		if (ret < 0)
			break;				/* done or error */

		if (copybuf)
		{
			FUNC8(fout, copybuf, ret);
			FUNC4(copybuf);
		}

		/* ----------
		 * THROTTLE:
		 *
		 * There was considerable discussion in late July, 2000 regarding
		 * slowing down pg_dump when backing up large tables. Users with both
		 * slow & fast (multi-processor) machines experienced performance
		 * degradation when doing a backup.
		 *
		 * Initial attempts based on sleeping for a number of ms for each ms
		 * of work were deemed too complex, then a simple 'sleep in each loop'
		 * implementation was suggested. The latter failed because the loop
		 * was too tight. Finally, the following was implemented:
		 *
		 * If throttle is non-zero, then
		 *		See how long since the last sleep.
		 *		Work out how long to sleep (based on ratio).
		 *		If sleep is more than 100ms, then
		 *			sleep
		 *			reset timer
		 *		EndIf
		 * EndIf
		 *
		 * where the throttle value was the number of ms to sleep per ms of
		 * work. The calculation was done in each loop.
		 *
		 * Most of the hard work is done in the backend, and this solution
		 * still did not work particularly well: on slow machines, the ratio
		 * was 50:1, and on medium paced machines, 1:1, and on fast
		 * multi-processor machines, it had little or no effect, for reasons
		 * that were unclear.
		 *
		 * Further discussion ensued, and the proposal was dropped.
		 *
		 * For those people who want this feature, it can be implemented using
		 * gettimeofday in each loop, calculating the time since last sleep,
		 * multiplying that by the sleep ratio, then if the result is more
		 * than a preset 'minimum sleep time' (say 100ms), call the 'select'
		 * function to sleep for a subsecond period ie.
		 *
		 * select(0, NULL, NULL, NULL, &tvi);
		 *
		 * This will return after the interval specified in the structure tvi.
		 * Finally, call gettimeofday again to save the 'last sleep time'.
		 * ----------
		 */
	}
	FUNC11(fout, "\\.\n\n\n");

	if (ret == -2)
	{
		/* copy data transfer failed */
		FUNC17("Dumping the contents of table \"%s\" failed: PQgetCopyData() failed.", classname);
		FUNC17("Error message from server: %s", FUNC3(conn));
		FUNC17("The command was: %s", q->data);
		FUNC14(1);
	}

	/* Check command status and return to normal libpq state */
	res = FUNC6(conn);
	if (FUNC7(res) != PGRES_COMMAND_OK)
	{
		FUNC17("Dumping the contents of table \"%s\" failed: PQgetResult() failed.", classname);
		FUNC17("Error message from server: %s", FUNC3(conn));
		FUNC17("The command was: %s", q->data);
		FUNC14(1);
	}
	FUNC2(res);

	/* Do this to ensure we've pumped libpq back to idle state */
	if (FUNC6(conn) != NULL)
		FUNC19("unexpected extra results during COPY of table \"%s\"",
					   classname);

	FUNC13(q);
	return 1;
}