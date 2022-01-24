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
typedef  int /*<<< orphan*/  va_list ;
typedef  char* LPTSTR ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 unsigned short EVENTLOG_ERROR_TYPE ; 
 unsigned short EVENTLOG_INFORMATION_TYPE ; 
 unsigned short EVENTLOG_WARNING_TYPE ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
#define  LOG_ALERT 129 
#define  LOG_INFO 128 
 int /*<<< orphan*/  LOG_PID ; 
 int /*<<< orphan*/  LOG_SYSLOG ; 
 int /*<<< orphan*/  PHP_SYSLOG_ERROR_TYPE ; 
 int /*<<< orphan*/  PHP_SYSLOG_INFO_TYPE ; 
 int /*<<< orphan*/  PHP_SYSLOG_WARNING_TYPE ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned short,unsigned short,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,char**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned short,unsigned short,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  log_header ; 
 int /*<<< orphan*/  log_source ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char**,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 

void FUNC8(int priority, const char *message, va_list args)
{
	LPTSTR strs[2];
	unsigned short etype;
	char *tmp = NULL;
	DWORD evid;
	wchar_t *strsw[2];

	/* default event source */
	if (INVALID_HANDLE_VALUE == FUNC0(log_source))
		FUNC5("php", LOG_PID, LOG_SYSLOG);

	switch (priority) {			/* translate UNIX type into NT type */
		case LOG_ALERT:
			etype = EVENTLOG_ERROR_TYPE;
			evid = PHP_SYSLOG_ERROR_TYPE;
			break;
		case LOG_INFO:
			etype = EVENTLOG_INFORMATION_TYPE;
			evid = PHP_SYSLOG_INFO_TYPE;
			break;
		default:
			etype = EVENTLOG_WARNING_TYPE;
			evid = PHP_SYSLOG_WARNING_TYPE;
	}

	FUNC7(&tmp, 0, message, args);	/* build message */

	strsw[0] = FUNC6(FUNC0(log_header));
	strsw[1] = FUNC6(tmp);

	/* report the event */
	if (strsw[0] && strsw[1]) {
		FUNC2(FUNC0(log_source), etype, (unsigned short) priority, evid, NULL, 2, 0, strsw, NULL);
		FUNC4(strsw[0]);
		FUNC4(strsw[1]);
		FUNC3(tmp);
		return;
	}

	FUNC4(strsw[0]);
	FUNC4(strsw[1]);

	strs[0] = FUNC0(log_header);	/* write header */
	strs[1] = tmp;				/* then the message */

	FUNC1(FUNC0(log_source), etype, (unsigned short) priority, evid, NULL, 2, 0, strs, NULL);
	FUNC3(tmp);
}