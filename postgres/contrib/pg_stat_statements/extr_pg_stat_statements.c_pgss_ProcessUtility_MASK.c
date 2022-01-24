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
typedef  scalar_t__ uint64 ;
typedef  int /*<<< orphan*/  instr_time ;
struct TYPE_9__ {int /*<<< orphan*/  blk_write_time; int /*<<< orphan*/  blk_read_time; scalar_t__ temp_blks_written; scalar_t__ temp_blks_read; scalar_t__ local_blks_written; scalar_t__ local_blks_dirtied; scalar_t__ local_blks_read; scalar_t__ local_blks_hit; scalar_t__ shared_blks_written; scalar_t__ shared_blks_dirtied; scalar_t__ shared_blks_read; scalar_t__ shared_blks_hit; } ;
struct TYPE_8__ {int /*<<< orphan*/  stmt_len; int /*<<< orphan*/  stmt_location; int /*<<< orphan*/ * utilityStmt; } ;
typedef  int /*<<< orphan*/  QueryEnvironment ;
typedef  int /*<<< orphan*/  ProcessUtilityContext ;
typedef  TYPE_1__ PlannedStmt ;
typedef  int /*<<< orphan*/  ParamListInfo ;
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  DestReceiver ;
typedef  TYPE_2__ BufferUsage ;

/* Variables and functions */
 int /*<<< orphan*/  DeallocateStmt ; 
 int /*<<< orphan*/  ExecuteStmt ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  PrepareStmt ; 
 int /*<<< orphan*/  nested_level ; 
 TYPE_2__ pgBufferUsage ; 
 scalar_t__ FUNC7 (char*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,TYPE_2__*,int /*<<< orphan*/ *) ; 
 scalar_t__ pgss_track_utility ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC12 (char*,char*,int) ; 

__attribute__((used)) static void
FUNC13(PlannedStmt *pstmt, const char *queryString,
					ProcessUtilityContext context,
					ParamListInfo params, QueryEnvironment *queryEnv,
					DestReceiver *dest, char *completionTag)
{
	Node	   *parsetree = pstmt->utilityStmt;

	/*
	 * If it's an EXECUTE statement, we don't track it and don't increment the
	 * nesting level.  This allows the cycles to be charged to the underlying
	 * PREPARE instead (by the Executor hooks), which is much more useful.
	 *
	 * We also don't track execution of PREPARE.  If we did, we would get one
	 * hash table entry for the PREPARE (with hash calculated from the query
	 * string), and then a different one with the same query string (but hash
	 * calculated from the query tree) would be used to accumulate costs of
	 * ensuing EXECUTEs.  This would be confusing, and inconsistent with other
	 * cases where planning time is not included at all.
	 *
	 * Likewise, we don't track execution of DEALLOCATE.
	 */
	if (pgss_track_utility && FUNC8() &&
		!FUNC3(parsetree, ExecuteStmt) &&
		!FUNC3(parsetree, PrepareStmt) &&
		!FUNC3(parsetree, DeallocateStmt))
	{
		instr_time	start;
		instr_time	duration;
		uint64		rows;
		BufferUsage bufusage_start,
					bufusage;

		bufusage_start = pgBufferUsage;
		FUNC1(start);

		nested_level++;
		FUNC6();
		{
			if (&prev_ProcessUtility)
				FUNC10(pstmt, queryString,
									context, params, queryEnv,
									dest, completionTag);
			else
				FUNC11(pstmt, queryString,
										context, params, queryEnv,
										dest, completionTag);
		}
		FUNC5();
		{
			nested_level--;
		}
		FUNC4();

		FUNC1(duration);
		FUNC2(duration, start);

		/* parse command tag to retrieve the number of affected rows. */
		if (completionTag &&
			FUNC12(completionTag, "COPY ", 5) == 0)
			rows = FUNC7(completionTag + 5, NULL, 10);
		else
			rows = 0;

		/* calc differences of buffer counters. */
		bufusage.shared_blks_hit =
			pgBufferUsage.shared_blks_hit - bufusage_start.shared_blks_hit;
		bufusage.shared_blks_read =
			pgBufferUsage.shared_blks_read - bufusage_start.shared_blks_read;
		bufusage.shared_blks_dirtied =
			pgBufferUsage.shared_blks_dirtied - bufusage_start.shared_blks_dirtied;
		bufusage.shared_blks_written =
			pgBufferUsage.shared_blks_written - bufusage_start.shared_blks_written;
		bufusage.local_blks_hit =
			pgBufferUsage.local_blks_hit - bufusage_start.local_blks_hit;
		bufusage.local_blks_read =
			pgBufferUsage.local_blks_read - bufusage_start.local_blks_read;
		bufusage.local_blks_dirtied =
			pgBufferUsage.local_blks_dirtied - bufusage_start.local_blks_dirtied;
		bufusage.local_blks_written =
			pgBufferUsage.local_blks_written - bufusage_start.local_blks_written;
		bufusage.temp_blks_read =
			pgBufferUsage.temp_blks_read - bufusage_start.temp_blks_read;
		bufusage.temp_blks_written =
			pgBufferUsage.temp_blks_written - bufusage_start.temp_blks_written;
		bufusage.blk_read_time = pgBufferUsage.blk_read_time;
		FUNC2(bufusage.blk_read_time, bufusage_start.blk_read_time);
		bufusage.blk_write_time = pgBufferUsage.blk_write_time;
		FUNC2(bufusage.blk_write_time, bufusage_start.blk_write_time);

		FUNC9(queryString,
				   0,			/* signal that it's a utility stmt */
				   pstmt->stmt_location,
				   pstmt->stmt_len,
				   FUNC0(duration),
				   rows,
				   &bufusage,
				   NULL);
	}
	else
	{
		if (&prev_ProcessUtility)
			FUNC10(pstmt, queryString,
								context, params, queryEnv,
								dest, completionTag);
		else
			FUNC11(pstmt, queryString,
									context, params, queryEnv,
									dest, completionTag);
	}
}