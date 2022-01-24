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
typedef  int uint32 ;
typedef  int uint16 ;
typedef  int /*<<< orphan*/  WaitEventTimeout ;
typedef  int /*<<< orphan*/  WaitEventIPC ;
typedef  int /*<<< orphan*/  WaitEventIO ;
typedef  int /*<<< orphan*/  WaitEventClient ;
typedef  int /*<<< orphan*/  WaitEventActivity ;

/* Variables and functions */
 char* FUNC0 (int,int) ; 
 char* FUNC1 (int) ; 
#define  PG_WAIT_ACTIVITY 136 
#define  PG_WAIT_BUFFER_PIN 135 
#define  PG_WAIT_CLIENT 134 
#define  PG_WAIT_EXTENSION 133 
#define  PG_WAIT_IO 132 
#define  PG_WAIT_IPC 131 
#define  PG_WAIT_LOCK 130 
#define  PG_WAIT_LWLOCK 129 
#define  PG_WAIT_TIMEOUT 128 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 

const char *
FUNC7(uint32 wait_event_info)
{
	uint32		classId;
	uint16		eventId;
	const char *event_name;

	/* report process as not waiting. */
	if (wait_event_info == 0)
		return NULL;

	classId = wait_event_info & 0xFF000000;
	eventId = wait_event_info & 0x0000FFFF;

	switch (classId)
	{
		case PG_WAIT_LWLOCK:
			event_name = FUNC0(classId, eventId);
			break;
		case PG_WAIT_LOCK:
			event_name = FUNC1(eventId);
			break;
		case PG_WAIT_BUFFER_PIN:
			event_name = "BufferPin";
			break;
		case PG_WAIT_ACTIVITY:
			{
				WaitEventActivity w = (WaitEventActivity) wait_event_info;

				event_name = FUNC2(w);
				break;
			}
		case PG_WAIT_CLIENT:
			{
				WaitEventClient w = (WaitEventClient) wait_event_info;

				event_name = FUNC3(w);
				break;
			}
		case PG_WAIT_EXTENSION:
			event_name = "Extension";
			break;
		case PG_WAIT_IPC:
			{
				WaitEventIPC w = (WaitEventIPC) wait_event_info;

				event_name = FUNC5(w);
				break;
			}
		case PG_WAIT_TIMEOUT:
			{
				WaitEventTimeout w = (WaitEventTimeout) wait_event_info;

				event_name = FUNC6(w);
				break;
			}
		case PG_WAIT_IO:
			{
				WaitEventIO w = (WaitEventIO) wait_event_info;

				event_name = FUNC4(w);
				break;
			}
		default:
			event_name = "unknown wait event";
			break;
	}

	return event_name;
}