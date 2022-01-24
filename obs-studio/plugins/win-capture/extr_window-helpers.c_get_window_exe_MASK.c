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
typedef  int /*<<< orphan*/  wchar_t ;
struct dstr {int /*<<< orphan*/  array; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/ * HANDLE ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  PROCESS_QUERY_LIMITED_INFORMATION ; 
 int /*<<< orphan*/  FUNC4 (struct dstr*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct dstr*) ; 
 int /*<<< orphan*/  FUNC6 (struct dstr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int,scalar_t__) ; 
 char* FUNC8 (int /*<<< orphan*/ ,char) ; 

bool FUNC9(struct dstr *name, HWND window)
{
	wchar_t wname[MAX_PATH];
	struct dstr temp = {0};
	bool success = false;
	HANDLE process = NULL;
	char *slash;
	DWORD id;

	FUNC3(window, &id);
	if (id == FUNC1())
		return false;

	process = FUNC7(PROCESS_QUERY_LIMITED_INFORMATION, false, id);
	if (!process)
		goto fail;

	if (!FUNC2(process, wname, MAX_PATH))
		goto fail;

	FUNC6(&temp, wname);
	slash = FUNC8(temp.array, '\\');
	if (!slash)
		goto fail;

	FUNC4(name, slash + 1);
	success = true;

fail:
	if (!success)
		FUNC4(name, "unknown");

	FUNC5(&temp);
	FUNC0(process);
	return true;
}