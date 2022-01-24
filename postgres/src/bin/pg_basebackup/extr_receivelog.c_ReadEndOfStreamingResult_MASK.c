#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint64 ;
typedef  int uint32 ;
typedef  int XLogRecPtr ;
typedef  int /*<<< orphan*/  PGresult ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,...) ; 
 int FUNC5 (int /*<<< orphan*/ ,char*,int*,int*) ; 

__attribute__((used)) static bool
FUNC6(PGresult *res, XLogRecPtr *startpos, uint32 *timeline)
{
	uint32		startpos_xlogid,
				startpos_xrecoff;

	/*----------
	 * The result set consists of one row and two columns, e.g:
	 *
	 *	next_tli | next_tli_startpos
	 * ----------+-------------------
	 *		   4 | 0/9949AE0
	 *
	 * next_tli is the timeline ID of the next timeline after the one that
	 * just finished streaming. next_tli_startpos is the WAL location where
	 * the server switched to it.
	 *----------
	 */
	if (FUNC1(res) < 2 || FUNC2(res) != 1)
	{
		FUNC4("unexpected result set after end-of-timeline: got %d rows and %d fields, expected %d rows and %d fields",
					 FUNC2(res), FUNC1(res), 1, 2);
		return false;
	}

	*timeline = FUNC3(FUNC0(res, 0, 0));
	if (FUNC5(FUNC0(res, 0, 1), "%X/%X", &startpos_xlogid,
			   &startpos_xrecoff) != 2)
	{
		FUNC4("could not parse next timeline's starting point \"%s\"",
					 FUNC0(res, 0, 1));
		return false;
	}
	*startpos = ((uint64) startpos_xlogid << 32) | startpos_xrecoff;

	return true;
}