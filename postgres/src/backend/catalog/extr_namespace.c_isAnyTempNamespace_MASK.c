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
typedef  int /*<<< orphan*/  Oid ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*,char*,int) ; 

bool
FUNC3(Oid namespaceId)
{
	bool		result;
	char	   *nspname;

	/* True if the namespace name starts with "pg_temp_" or "pg_toast_temp_" */
	nspname = FUNC0(namespaceId);
	if (!nspname)
		return false;			/* no such namespace? */
	result = (FUNC2(nspname, "pg_temp_", 8) == 0) ||
		(FUNC2(nspname, "pg_toast_temp_", 14) == 0);
	FUNC1(nspname);
	return result;
}