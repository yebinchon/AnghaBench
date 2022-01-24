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
typedef  int /*<<< orphan*/  AclMode ;

/* Variables and functions */
 int /*<<< orphan*/  ACL_CONNECT ; 
 int /*<<< orphan*/  ACL_CREATE ; 
 int /*<<< orphan*/  ACL_CREATE_TEMP ; 
 int /*<<< orphan*/  ACL_DELETE ; 
 int /*<<< orphan*/  ACL_EXECUTE ; 
 int /*<<< orphan*/  ACL_INSERT ; 
 int /*<<< orphan*/  ACL_REFERENCES ; 
 int /*<<< orphan*/  ACL_SELECT ; 
 int /*<<< orphan*/  ACL_TRIGGER ; 
 int /*<<< orphan*/  ACL_TRUNCATE ; 
 int /*<<< orphan*/  ACL_UPDATE ; 
 int /*<<< orphan*/  ACL_USAGE ; 
 int /*<<< orphan*/  ERRCODE_SYNTAX_ERROR ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 scalar_t__ FUNC3 (char const*,char*) ; 

__attribute__((used)) static AclMode
FUNC4(const char *privname)
{
	if (FUNC3(privname, "insert") == 0)
		return ACL_INSERT;
	if (FUNC3(privname, "select") == 0)
		return ACL_SELECT;
	if (FUNC3(privname, "update") == 0)
		return ACL_UPDATE;
	if (FUNC3(privname, "delete") == 0)
		return ACL_DELETE;
	if (FUNC3(privname, "truncate") == 0)
		return ACL_TRUNCATE;
	if (FUNC3(privname, "references") == 0)
		return ACL_REFERENCES;
	if (FUNC3(privname, "trigger") == 0)
		return ACL_TRIGGER;
	if (FUNC3(privname, "execute") == 0)
		return ACL_EXECUTE;
	if (FUNC3(privname, "usage") == 0)
		return ACL_USAGE;
	if (FUNC3(privname, "create") == 0)
		return ACL_CREATE;
	if (FUNC3(privname, "temporary") == 0)
		return ACL_CREATE_TEMP;
	if (FUNC3(privname, "temp") == 0)
		return ACL_CREATE_TEMP;
	if (FUNC3(privname, "connect") == 0)
		return ACL_CONNECT;
	if (FUNC3(privname, "rule") == 0)
		return 0;				/* ignore old RULE privileges */
	FUNC0(ERROR,
			(FUNC1(ERRCODE_SYNTAX_ERROR),
			 FUNC2("unrecognized privilege type \"%s\"", privname)));
	return 0;					/* appease compiler */
}