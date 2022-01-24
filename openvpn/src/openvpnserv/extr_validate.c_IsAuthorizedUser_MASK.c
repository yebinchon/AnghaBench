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
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  SID_NAME_USE ;
typedef  int /*<<< orphan*/  PTOKEN_GROUPS ;
typedef  int /*<<< orphan*/  PSID ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int*,char*,int*,int /*<<< orphan*/ *) ; 
 int MAX_NAME ; 
 int /*<<< orphan*/  M_INFO ; 
 int /*<<< orphan*/  M_SYSERR ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 char* SYSTEM_ADMIN_GROUP ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

BOOL
FUNC8(PSID sid, const HANDLE token, const WCHAR *ovpn_admin_group)
{
    const WCHAR *admin_group[2];
    WCHAR username[MAX_NAME];
    WCHAR domain[MAX_NAME];
    WCHAR sysadmin_group[MAX_NAME];
    DWORD len = MAX_NAME;
    BOOL ret = FALSE;
    SID_NAME_USE sid_type;

    /* Get username */
    if (!FUNC3(NULL, sid, username, &len, domain, &len, &sid_type))
    {
        FUNC4(M_SYSERR, FUNC5("LookupAccountSid"));
        /* not fatal as this is now used only for logging */
        username[0] = '\0';
        domain[0] = '\0';
    }

    if (FUNC0(sysadmin_group, FUNC6(sysadmin_group)))
    {
        admin_group[0] = sysadmin_group;
    }
    else
    {
        FUNC4(M_SYSERR, FUNC5("Failed to get the name of Administrators group. Using the default."));
        /* use the default value */
        admin_group[0] = SYSTEM_ADMIN_GROUP;
    }
    admin_group[1] = ovpn_admin_group;

    PTOKEN_GROUPS token_groups = FUNC1(token);
    for (int i = 0; i < 2; ++i)
    {
        ret = FUNC2(sid, token_groups, admin_group[i]);
        if (ret)
        {
            FUNC4(M_INFO, FUNC5("Authorizing user '%s@%s' by virtue of membership in group '%s'"),
                          username, domain, admin_group[i]);
            goto out;
        }
    }

out:
    FUNC7(token_groups);
    return ret;
}