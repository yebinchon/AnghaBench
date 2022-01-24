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
struct TYPE_5__ {char* st_appname; } ;
typedef  TYPE_1__ PgBackendStatus ;

/* Variables and functions */
 TYPE_1__* MyBEEntry ; 
 scalar_t__ NAMEDATALEN ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__ volatile*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__ volatile*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int) ; 
 int FUNC3 (char const*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 

void
FUNC5(const char *appname)
{
	volatile PgBackendStatus *beentry = MyBEEntry;
	int			len;

	if (!beentry)
		return;

	/* This should be unnecessary if GUC did its job, but be safe */
	len = FUNC3(appname, FUNC4(appname), NAMEDATALEN - 1);

	/*
	 * Update my status entry, following the protocol of bumping
	 * st_changecount before and after.  We use a volatile pointer here to
	 * ensure the compiler doesn't try to get cute.
	 */
	FUNC0(beentry);

	FUNC2((char *) beentry->st_appname, appname, len);
	beentry->st_appname[len] = '\0';

	FUNC1(beentry);
}