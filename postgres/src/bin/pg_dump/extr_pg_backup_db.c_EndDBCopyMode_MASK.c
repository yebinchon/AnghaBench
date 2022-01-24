#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int pgCopyIn; int /*<<< orphan*/  connection; } ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  TYPE_1__ ArchiveHandle ;
typedef  int /*<<< orphan*/  Archive ;

/* Variables and functions */
 scalar_t__ PGRES_COMMAND_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char*,char const*,int /*<<< orphan*/ ) ; 

void
FUNC8(Archive *AHX, const char *tocEntryTag)
{
	ArchiveHandle *AH = (ArchiveHandle *) AHX;

	if (AH->pgCopyIn)
	{
		PGresult   *res;

		if (FUNC3(AH->connection, NULL) <= 0)
			FUNC5("error returned by PQputCopyEnd: %s",
				  FUNC1(AH->connection));

		/* Check command status and return to normal libpq state */
		res = FUNC2(AH->connection);
		if (FUNC4(res) != PGRES_COMMAND_OK)
			FUNC7(AH, "COPY failed for table \"%s\": %s",
								  tocEntryTag, FUNC1(AH->connection));
		FUNC0(res);

		/* Do this to ensure we've pumped libpq back to idle state */
		if (FUNC2(AH->connection) != NULL)
			FUNC6("unexpected extra results during COPY of table \"%s\"",
						   tocEntryTag);

		AH->pgCopyIn = false;
	}
}