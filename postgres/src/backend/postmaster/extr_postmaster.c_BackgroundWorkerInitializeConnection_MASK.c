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
typedef  int uint32 ;
struct TYPE_3__ {int bgw_flags; } ;
typedef  TYPE_1__ BackgroundWorker ;

/* Variables and functions */
 int BGWORKER_BACKEND_DATABASE_CONNECTION ; 
 int BGWORKER_BYPASS_ALLOWCONN ; 
 int /*<<< orphan*/  ERRCODE_PROGRAM_LIMIT_EXCEEDED ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FATAL ; 
 int /*<<< orphan*/  FUNC0 (char const*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_1__* MyBgworkerEntry ; 
 int /*<<< orphan*/  NormalProcessing ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

void
FUNC6(const char *dbname, const char *username, uint32 flags)
{
	BackgroundWorker *worker = MyBgworkerEntry;

	/* XXX is this the right errcode? */
	if (!(worker->bgw_flags & BGWORKER_BACKEND_DATABASE_CONNECTION))
		FUNC3(FATAL,
				(FUNC4(ERRCODE_PROGRAM_LIMIT_EXCEEDED),
				 FUNC5("database connection requirement not indicated during registration")));

	FUNC0(dbname, InvalidOid, username, InvalidOid, NULL, (flags & BGWORKER_BYPASS_ALLOWCONN) != 0);

	/* it had better not gotten out of "init" mode yet */
	if (!FUNC1())
		FUNC3(ERROR,
				(FUNC5("invalid processing mode in background worker")));
	FUNC2(NormalProcessing);
}