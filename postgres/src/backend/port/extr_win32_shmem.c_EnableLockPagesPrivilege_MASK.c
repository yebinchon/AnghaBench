#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int PrivilegeCount; TYPE_1__* Privileges; } ;
struct TYPE_4__ {int /*<<< orphan*/  Attributes; int /*<<< orphan*/  Luid; } ;
typedef  TYPE_2__ TOKEN_PRIVILEGES ;
typedef  int /*<<< orphan*/  LUID ;
typedef  int /*<<< orphan*/  HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERRCODE_INSUFFICIENT_PRIVILEGE ; 
 scalar_t__ ERROR_NOT_ALL_ASSIGNED ; 
 scalar_t__ ERROR_SUCCESS ; 
 int FALSE ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SE_LOCK_MEMORY_NAME ; 
 int /*<<< orphan*/  SE_PRIVILEGE_ENABLED ; 
 int TOKEN_ADJUST_PRIVILEGES ; 
 int TOKEN_QUERY ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 

__attribute__((used)) static bool
FUNC11(int elevel)
{
	HANDLE		hToken;
	TOKEN_PRIVILEGES tp;
	LUID		luid;

	if (!FUNC5(FUNC2(), TOKEN_ADJUST_PRIVILEGES | TOKEN_QUERY, &hToken))
	{
		FUNC6(elevel,
				(FUNC10("could not enable Lock Pages in Memory user right: error code %lu", FUNC3()),
				 FUNC8("Failed system call was %s.", "OpenProcessToken")));
		return FALSE;
	}

	if (!FUNC4(NULL, SE_LOCK_MEMORY_NAME, &luid))
	{
		FUNC6(elevel,
				(FUNC10("could not enable Lock Pages in Memory user right: error code %lu", FUNC3()),
				 FUNC8("Failed system call was %s.", "LookupPrivilegeValue")));
		FUNC1(hToken);
		return FALSE;
	}
	tp.PrivilegeCount = 1;
	tp.Privileges[0].Luid = luid;
	tp.Privileges[0].Attributes = SE_PRIVILEGE_ENABLED;

	if (!FUNC0(hToken, FALSE, &tp, 0, NULL, NULL))
	{
		FUNC6(elevel,
				(FUNC10("could not enable Lock Pages in Memory user right: error code %lu", FUNC3()),
				 FUNC8("Failed system call was %s.", "AdjustTokenPrivileges")));
		FUNC1(hToken);
		return FALSE;
	}

	if (FUNC3() != ERROR_SUCCESS)
	{
		if (FUNC3() == ERROR_NOT_ALL_ASSIGNED)
			FUNC6(elevel,
					(FUNC7(ERRCODE_INSUFFICIENT_PRIVILEGE),
					 FUNC10("could not enable Lock Pages in Memory user right"),
					 FUNC9("Assign Lock Pages in Memory user right to the Windows user account which runs PostgreSQL.")));
		else
			FUNC6(elevel,
					(FUNC10("could not enable Lock Pages in Memory user right: error code %lu", FUNC3()),
					 FUNC8("Failed system call was %s.", "AdjustTokenPrivileges")));
		FUNC1(hToken);
		return FALSE;
	}

	FUNC1(hToken);

	return TRUE;
}