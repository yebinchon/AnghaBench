#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ shared_blks_hit; scalar_t__ shared_blks_read; scalar_t__ shared_blks_dirtied; scalar_t__ shared_blks_written; scalar_t__ local_blks_hit; scalar_t__ local_blks_read; scalar_t__ local_blks_dirtied; scalar_t__ local_blks_written; scalar_t__ temp_blks_read; scalar_t__ temp_blks_written; int /*<<< orphan*/  blk_write_time; int /*<<< orphan*/  blk_read_time; } ;
struct TYPE_7__ {scalar_t__ format; int indent; int /*<<< orphan*/  str; } ;
typedef  TYPE_1__ ExplainState ;
typedef  TYPE_2__ BufferUsage ;

/* Variables and functions */
 scalar_t__ EXPLAIN_FORMAT_TEXT ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,scalar_t__,int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *,scalar_t__,TYPE_1__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ track_io_timing ; 

__attribute__((used)) static void
FUNC8(ExplainState *es, const BufferUsage *usage)
{
	if (es->format == EXPLAIN_FORMAT_TEXT)
	{
		bool		has_shared = (usage->shared_blks_hit > 0 ||
								  usage->shared_blks_read > 0 ||
								  usage->shared_blks_dirtied > 0 ||
								  usage->shared_blks_written > 0);
		bool		has_local = (usage->local_blks_hit > 0 ||
								 usage->local_blks_read > 0 ||
								 usage->local_blks_dirtied > 0 ||
								 usage->local_blks_written > 0);
		bool		has_temp = (usage->temp_blks_read > 0 ||
								usage->temp_blks_written > 0);
		bool		has_timing = (!FUNC3(usage->blk_read_time) ||
								  !FUNC3(usage->blk_write_time));

		/* Show only positive counter values. */
		if (has_shared || has_local || has_temp)
		{
			FUNC6(es->str, es->indent * 2);
			FUNC7(es->str, "Buffers:");

			if (has_shared)
			{
				FUNC7(es->str, " shared");
				if (usage->shared_blks_hit > 0)
					FUNC4(es->str, " hit=%ld",
									 usage->shared_blks_hit);
				if (usage->shared_blks_read > 0)
					FUNC4(es->str, " read=%ld",
									 usage->shared_blks_read);
				if (usage->shared_blks_dirtied > 0)
					FUNC4(es->str, " dirtied=%ld",
									 usage->shared_blks_dirtied);
				if (usage->shared_blks_written > 0)
					FUNC4(es->str, " written=%ld",
									 usage->shared_blks_written);
				if (has_local || has_temp)
					FUNC5(es->str, ',');
			}
			if (has_local)
			{
				FUNC7(es->str, " local");
				if (usage->local_blks_hit > 0)
					FUNC4(es->str, " hit=%ld",
									 usage->local_blks_hit);
				if (usage->local_blks_read > 0)
					FUNC4(es->str, " read=%ld",
									 usage->local_blks_read);
				if (usage->local_blks_dirtied > 0)
					FUNC4(es->str, " dirtied=%ld",
									 usage->local_blks_dirtied);
				if (usage->local_blks_written > 0)
					FUNC4(es->str, " written=%ld",
									 usage->local_blks_written);
				if (has_temp)
					FUNC5(es->str, ',');
			}
			if (has_temp)
			{
				FUNC7(es->str, " temp");
				if (usage->temp_blks_read > 0)
					FUNC4(es->str, " read=%ld",
									 usage->temp_blks_read);
				if (usage->temp_blks_written > 0)
					FUNC4(es->str, " written=%ld",
									 usage->temp_blks_written);
			}
			FUNC5(es->str, '\n');
		}

		/* As above, show only positive counter values. */
		if (has_timing)
		{
			FUNC6(es->str, es->indent * 2);
			FUNC7(es->str, "I/O Timings:");
			if (!FUNC3(usage->blk_read_time))
				FUNC4(es->str, " read=%0.3f",
								 FUNC2(usage->blk_read_time));
			if (!FUNC3(usage->blk_write_time))
				FUNC4(es->str, " write=%0.3f",
								 FUNC2(usage->blk_write_time));
			FUNC5(es->str, '\n');
		}
	}
	else
	{
		FUNC1("Shared Hit Blocks", NULL,
							   usage->shared_blks_hit, es);
		FUNC1("Shared Read Blocks", NULL,
							   usage->shared_blks_read, es);
		FUNC1("Shared Dirtied Blocks", NULL,
							   usage->shared_blks_dirtied, es);
		FUNC1("Shared Written Blocks", NULL,
							   usage->shared_blks_written, es);
		FUNC1("Local Hit Blocks", NULL,
							   usage->local_blks_hit, es);
		FUNC1("Local Read Blocks", NULL,
							   usage->local_blks_read, es);
		FUNC1("Local Dirtied Blocks", NULL,
							   usage->local_blks_dirtied, es);
		FUNC1("Local Written Blocks", NULL,
							   usage->local_blks_written, es);
		FUNC1("Temp Read Blocks", NULL,
							   usage->temp_blks_read, es);
		FUNC1("Temp Written Blocks", NULL,
							   usage->temp_blks_written, es);
		if (track_io_timing)
		{
			FUNC0("I/O Read Time", "ms",
								 FUNC2(usage->blk_read_time),
								 3, es);
			FUNC0("I/O Write Time", "ms",
								 FUNC2(usage->blk_write_time),
								 3, es);
		}
	}
}