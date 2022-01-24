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
struct TYPE_5__ {scalar_t__ st_procpid; } ;
typedef  TYPE_1__ PgBackendStatus ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 TYPE_1__* MyBEEntry ; 
 int /*<<< orphan*/  MyDatabaseId ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__ volatile*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__ volatile*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void
FUNC4(int code, Datum arg)
{
	volatile PgBackendStatus *beentry = MyBEEntry;

	/*
	 * If we got as far as discovering our own database ID, we can report what
	 * we did to the collector.  Otherwise, we'd be sending an invalid
	 * database ID, so forget it.  (This means that accesses to pg_database
	 * during failed backend starts might never get counted.)
	 */
	if (FUNC0(MyDatabaseId))
		FUNC3(true);

	/*
	 * Clear my status entry, following the protocol of bumping st_changecount
	 * before and after.  We use a volatile pointer here to ensure the
	 * compiler doesn't try to get cute.
	 */
	FUNC1(beentry);

	beentry->st_procpid = 0;	/* mark invalid */

	FUNC2(beentry);
}