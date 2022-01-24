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
struct TYPE_4__ {scalar_t__ Attributes; int /*<<< orphan*/  Luid; } ;
typedef  TYPE_2__ TOKEN_PRIVILEGES ;
typedef  int /*<<< orphan*/  LUID ;
typedef  int /*<<< orphan*/ * HANDLE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,scalar_t__,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  SE_DEBUG_NAME ; 
 scalar_t__ SE_PRIVILEGE_ENABLED ; 
 int /*<<< orphan*/  TOKEN_ADJUST_PRIVILEGES ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 

__attribute__((used)) static bool FUNC7() {
	/////////////////////////////////////////////////////////
	//   Note: Enabling SeDebugPrivilege adapted from sample
	//     MSDN @ http://msdn.microsoft.com/en-us/library/aa446619%28VS.85%29.aspx
	// Enable SeDebugPrivilege
	bool ret = true;
	TOKEN_PRIVILEGES tokenPriv;
	HANDLE hToken = NULL;
	LUID luidDebug;
	if (!FUNC5 (FUNC2 (),
			TOKEN_ADJUST_PRIVILEGES, &hToken))
		return false;

	if (!FUNC4 (NULL, SE_DEBUG_NAME, &luidDebug)) {
		FUNC1 (hToken);
		return false;
	}

	tokenPriv.PrivilegeCount = 1;
	tokenPriv.Privileges[0].Luid = luidDebug;
	tokenPriv.Privileges[0].Attributes = SE_PRIVILEGE_ENABLED;
	if (FUNC0 (hToken, FALSE, &tokenPriv, 0, NULL, NULL) != FALSE) {
		if (tokenPriv.Privileges[0].Attributes == SE_PRIVILEGE_ENABLED) {
		//	eprintf ("PRIV ENABLED\n");
		}
		// Always successful, even in the cases which lead to OpenProcess failure
		//	eprintf ("Successfully changed token privileges.\n");
		// XXX if we cant get the token nobody tells?? wtf
	} else {
		FUNC6 ("Failed to change token privileges 0x%x\n", (int)FUNC3());
		ret = false;
	}
	FUNC1 (hToken);
	return ret;
}