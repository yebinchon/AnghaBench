#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  pValue; int /*<<< orphan*/  (* pEntry ) (int /*<<< orphan*/ ) ;} ;
typedef  TYPE_1__ tSimpleLinkSpawnMsg ;
typedef  scalar_t__ portBASE_TYPE ;

/* Variables and functions */
 int /*<<< orphan*/  SL_SPAWN_MAX_WAIT_MS ; 
 scalar_t__ pdPASS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xSimpleLinkSpawnQueue ; 

void FUNC3(void *pvParameters)
{
	tSimpleLinkSpawnMsg Msg;
	portBASE_TYPE ret;

	for(;;)
	{
		ret = FUNC2( xSimpleLinkSpawnQueue, &Msg, SL_SPAWN_MAX_WAIT_MS);
		if(ret == pdPASS)
		{
				Msg.pEntry(Msg.pValue);
		}
        // set the alive flag for the wdt
        FUNC0();
	}
}