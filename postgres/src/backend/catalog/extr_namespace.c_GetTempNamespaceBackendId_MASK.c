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
 int InvalidBackendId ; 
 int FUNC0 (char*) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char*,char*,int) ; 

int
FUNC4(Oid namespaceId)
{
	int			result;
	char	   *nspname;

	/* See if the namespace name starts with "pg_temp_" or "pg_toast_temp_" */
	nspname = FUNC1(namespaceId);
	if (!nspname)
		return InvalidBackendId;	/* no such namespace? */
	if (FUNC3(nspname, "pg_temp_", 8) == 0)
		result = FUNC0(nspname + 8);
	else if (FUNC3(nspname, "pg_toast_temp_", 14) == 0)
		result = FUNC0(nspname + 14);
	else
		result = InvalidBackendId;
	FUNC2(nspname);
	return result;
}