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
typedef  int /*<<< orphan*/  HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  ACCEL_EVENT_SOURCE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EVENTLOG_ERROR_TYPE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,char**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,char*) ; 

__attribute__((used)) static void FUNC7(int type, char *msg, int err)
{
	HANDLE h;
	char *ev_msgs[2];
	char *buf = FUNC5(err);

	h = FUNC1(NULL, FUNC3(ACCEL_EVENT_SOURCE));
	ev_msgs[0] = msg;
	ev_msgs[1] = buf;
	FUNC2(h,				  // event log handle
            EVENTLOG_ERROR_TYPE,  // event type
            0,                    // category zero
            err,				  // event identifier
            NULL,                 // no user security identifier
            2,                    // one substitution string
            0,                    // no data
            ev_msgs,              // pointer to string array
            NULL);                // pointer to data
	FUNC0(h);

	FUNC6(type, "%s", msg);

	FUNC4(buf);
}