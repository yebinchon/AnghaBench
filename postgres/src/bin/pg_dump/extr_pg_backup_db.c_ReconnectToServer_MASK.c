#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * connection; } ;
typedef  int /*<<< orphan*/  PGconn ;
typedef  TYPE_1__ ArchiveHandle ;
typedef  int /*<<< orphan*/  Archive ;

/* Variables and functions */
 int /*<<< orphan*/  ALWAYS_SECURE_SEARCH_PATH_SQL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_1__*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ *) ; 

void
FUNC7(ArchiveHandle *AH, const char *dbname, const char *username)
{
	PGconn	   *newConn;
	const char *newdbname;
	const char *newusername;

	if (!dbname)
		newdbname = FUNC2(AH->connection);
	else
		newdbname = dbname;

	if (!username)
		newusername = FUNC4(AH->connection);
	else
		newusername = username;

	newConn = FUNC5(AH, newdbname, newusername);

	/* Update ArchiveHandle's connCancel before closing old connection */
	FUNC6(AH, newConn);

	FUNC3(AH->connection);
	AH->connection = newConn;

	/* Start strict; later phases may override this. */
	FUNC1(FUNC0((Archive *) AH,
										ALWAYS_SECURE_SEARCH_PATH_SQL));
}