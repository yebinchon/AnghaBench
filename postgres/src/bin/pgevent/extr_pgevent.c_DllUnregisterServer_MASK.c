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
typedef  int /*<<< orphan*/  key_name ;
typedef  int /*<<< orphan*/  STDAPI ;

/* Variables and functions */
 int /*<<< orphan*/  HKEY_LOCAL_MACHINE ; 
 int MB_ICONSTOP ; 
 int MB_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  SELFREG_E_TYPELIB ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  event_source ; 

STDAPI
FUNC3(void)
{
	char		key_name[400];

	/*
	 * Remove PostgreSQL source name as a subkey under the Application key in
	 * the EventLog registry key.
	 */

	FUNC2(key_name, sizeof(key_name),
			  "SYSTEM\\CurrentControlSet\\Services\\EventLog\\Application\\%s",
			  event_source);
	if (FUNC1(HKEY_LOCAL_MACHINE, key_name))
	{
		FUNC0(NULL, "Could not delete the registry key.", "PostgreSQL error", MB_OK | MB_ICONSTOP);
		return SELFREG_E_TYPELIB;
	}
	return S_OK;
}