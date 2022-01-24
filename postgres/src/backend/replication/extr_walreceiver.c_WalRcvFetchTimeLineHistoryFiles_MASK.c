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
typedef  int TimeLineID ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_PROTOCOL_VIOLATION ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  LOG ; 
 int MAXFNAMELEN ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,char**,char**,int*) ; 
 int /*<<< orphan*/  wrconn ; 
 int /*<<< orphan*/  FUNC9 (int,char*,int) ; 

__attribute__((used)) static void
FUNC10(TimeLineID first, TimeLineID last)
{
	TimeLineID	tli;

	for (tli = first; tli <= last; tli++)
	{
		/* there's no history file for timeline 1 */
		if (tli != 1 && !FUNC5(tli))
		{
			char	   *fname;
			char	   *content;
			int			len;
			char		expectedfname[MAXFNAMELEN];

			FUNC1(LOG,
					(FUNC3("fetching timeline history file for timeline %u from primary server",
							tli)));

			FUNC8(wrconn, tli, &fname, &content, &len);

			/*
			 * Check that the filename on the master matches what we
			 * calculated ourselves. This is just a sanity check, it should
			 * always match.
			 */
			FUNC0(expectedfname, tli);
			if (FUNC7(fname, expectedfname) != 0)
				FUNC1(ERROR,
						(FUNC2(ERRCODE_PROTOCOL_VIOLATION),
						 FUNC4("primary reported unexpected file name for timeline history file of timeline %u",
										 tli)));

			/*
			 * Write the file to pg_wal.
			 */
			FUNC9(tli, content, len);

			FUNC6(fname);
			FUNC6(content);
		}
	}
}