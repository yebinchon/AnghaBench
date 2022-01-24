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
struct TYPE_3__ {int /*<<< orphan*/  str; struct TYPE_3__* next; } ;
typedef  TYPE_1__ _stringlist ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char const*,...) ; 

__attribute__((used)) static void
FUNC3(const char *rolename, const _stringlist *granted_dbs)
{
	FUNC1(FUNC0("creating role \"%s\""), rolename);
	FUNC2("postgres", "CREATE ROLE \"%s\" WITH LOGIN", rolename);
	for (; granted_dbs != NULL; granted_dbs = granted_dbs->next)
	{
		FUNC2("postgres", "GRANT ALL ON DATABASE \"%s\" TO \"%s\"",
					 granted_dbs->str, rolename);
	}
}