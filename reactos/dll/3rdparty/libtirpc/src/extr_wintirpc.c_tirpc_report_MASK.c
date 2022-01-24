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
typedef  int /*<<< orphan*/  chMsg ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  VOID ;
typedef  scalar_t__ LPTSTR ;
typedef  scalar_t__ LPCWSTR ;
typedef  int /*<<< orphan*/ * HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  EVENTLOG_WARNING_TYPE ; 
 int FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,char*,int) ; 

VOID
FUNC7(LPTSTR lpszMsg)
{
	WCHAR    chMsg[256];
	HANDLE   hEventSource;
	LPCWSTR  lpszStrings[2];

	// Use event logging to log the error.
	//
	hEventSource = FUNC2(NULL,
									   FUNC4("tirpc.dll"));

#ifndef __REACTOS__
	FUNC6(chMsg, sizeof(chMsg), L"tirpc report: %d", FUNC1());
#else
	_snwprintf(chMsg, sizeof(chMsg) / sizeof(WCHAR), L"tirpc report: %d", GetLastError());
#endif
	lpszStrings[0] = (LPCWSTR)chMsg;
	lpszStrings[1] = lpszMsg;

	if (hEventSource != NULL) {
		FUNC3(hEventSource, // handle of event source
			EVENTLOG_WARNING_TYPE, // event type
			0,                    // event category
			0,                    // event ID
			NULL,                 // current user's SID
			2,                    // strings in lpszStrings
			0,                    // no bytes of raw data
			lpszStrings,          // array of error strings
			NULL);                // no raw data

		(VOID) FUNC0(hEventSource);
	}
}