#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
struct TYPE_5__ {int /*<<< orphan*/  TokenAppContainer; } ;
typedef  int /*<<< orphan*/  TOKEN_APPCONTAINER_INFORMATION ;
typedef  TYPE_1__* PTOKEN_APPCONTAINER_INFORMATION ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,scalar_t__,scalar_t__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TOKEN_QUERY ; 
 int /*<<< orphan*/  TokenAppContainerSid ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 TYPE_1__* FUNC6 (scalar_t__) ; 

wchar_t *FUNC7(HANDLE process)
{
	wchar_t *ret = NULL;
	DWORD size_ret;
	BOOL success;
	HANDLE token;

	if (FUNC4(process, TOKEN_QUERY, &token)) {
		DWORD info_len = FUNC2(12) +
				 sizeof(TOKEN_APPCONTAINER_INFORMATION);

		PTOKEN_APPCONTAINER_INFORMATION info = FUNC6(info_len);

		success = FUNC3(token, TokenAppContainerSid, info,
					      info_len, &size_ret);
		if (success)
			FUNC1(info->TokenAppContainer, &ret);

		FUNC5(info);
		FUNC0(token);
	}

	return ret;
}