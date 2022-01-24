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
typedef  int /*<<< orphan*/  SC_HANDLE ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DELETE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ ERROR_SERVICE_DOES_NOT_EXIST ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SC_MANAGER_CONNECT ; 
 int /*<<< orphan*/  SERVICES_ACTIVE_DATABASEW ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static DWORD FUNC6(void)
{
    static const WCHAR msiserverW[] = {'M','S','I','S','e','r','v','e','r',0};
    SC_HANDLE scm, service;
    DWORD ret = 0;

    if (!(scm = FUNC3(NULL, SERVICES_ACTIVE_DATABASEW, SC_MANAGER_CONNECT)))
    {
        FUNC5(stderr, "Failed to open service control manager\n");
        return 1;
    }
    if ((service = FUNC4(scm, msiserverW, DELETE)))
    {
        if (!FUNC1(service))
        {
            FUNC5(stderr, "Failed to delete MSI service\n");
            ret = 1;
        }
        FUNC0(service);
    }
    else if (FUNC2() != ERROR_SERVICE_DOES_NOT_EXIST)
    {
        FUNC5(stderr, "Failed to open MSI service\n");
        ret = 1;
    }
    FUNC0(scm);
    return ret;
}