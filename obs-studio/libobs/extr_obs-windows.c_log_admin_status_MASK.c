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
typedef  int /*<<< orphan*/  SID_IDENTIFIER_AUTHORITY ;
typedef  int /*<<< orphan*/  PSID ;
typedef  int BOOL ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  DOMAIN_ALIAS_RID_ADMINS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LOG_INFO ; 
 int /*<<< orphan*/  SECURITY_BUILTIN_DOMAIN_RID ; 
 int /*<<< orphan*/  SECURITY_NT_AUTHORITY ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 

__attribute__((used)) static void FUNC4(void)
{
	SID_IDENTIFIER_AUTHORITY auth = SECURITY_NT_AUTHORITY;
	PSID admin_group;
	BOOL success;

	success = FUNC0(&auth, 2,
					   SECURITY_BUILTIN_DOMAIN_RID,
					   DOMAIN_ALIAS_RID_ADMINS, 0, 0, 0, 0,
					   0, 0, &admin_group);
	if (success) {
		if (!FUNC1(NULL, admin_group, &success))
			success = false;
		FUNC2(admin_group);
	}

	FUNC3(LOG_INFO, "Running as administrator: %s",
	     success ? "true" : "false");
}