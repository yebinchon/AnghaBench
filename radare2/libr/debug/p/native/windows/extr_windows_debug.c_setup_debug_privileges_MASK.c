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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SE_DEBUG_NAME ; 
 int /*<<< orphan*/  SE_PRIVILEGE_ENABLED ; 
 int TOKEN_ADJUST_PRIVILEGES ; 
 int TOKEN_QUERY ; 

bool FUNC6(bool b) {
	HANDLE tok;
	if (!FUNC5 (FUNC2 (), TOKEN_ADJUST_PRIVILEGES | TOKEN_QUERY, &tok)) {
		return false;
	}
	bool ret = false;
	LUID luid;
	if (FUNC4 (NULL, SE_DEBUG_NAME, &luid)) {
		TOKEN_PRIVILEGES tp;
		tp.PrivilegeCount = 1;
		tp.Privileges[0].Luid = luid;
		tp.Privileges[0].Attributes = b ? SE_PRIVILEGE_ENABLED : 0;
		if (FUNC0 (tok, FALSE, &tp, 0, NULL, NULL)) {
			// TODO: handle ERROR_NOT_ALL_ASSIGNED
			ret = FUNC3 () == ERROR_SUCCESS;
		}
	}
	FUNC1 (tok);
	return ret;
}