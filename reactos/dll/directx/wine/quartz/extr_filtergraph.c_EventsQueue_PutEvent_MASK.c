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
struct TYPE_3__ {int msg_toget; int msg_tosave; int ring_buffer_size; int /*<<< orphan*/  msg_crst; int /*<<< orphan*/  msg_event; int /*<<< orphan*/ * messages; } ;
typedef  TYPE_1__ EventsQueue ;
typedef  int /*<<< orphan*/  Event ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int) ; 
 size_t EVENTS_RING_BUFFER_INCREMENT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,size_t) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static BOOL FUNC6(EventsQueue* omr, const Event* evt)
{
    FUNC1(&omr->msg_crst);
    if (omr->msg_toget == ((omr->msg_tosave + 1) % omr->ring_buffer_size))
    {
	int old_ring_buffer_size = omr->ring_buffer_size;
	omr->ring_buffer_size += EVENTS_RING_BUFFER_INCREMENT;
	FUNC4("omr->ring_buffer_size=%d\n",omr->ring_buffer_size);
	omr->messages = FUNC0(omr->messages, omr->ring_buffer_size * sizeof(Event));
	/* Now we need to rearrange the ring buffer so that the new
	   buffers just allocated are in between omr->msg_tosave and
	   omr->msg_toget.
	*/
	if (omr->msg_tosave < omr->msg_toget)
	{
	    FUNC5(&(omr->messages[omr->msg_toget + EVENTS_RING_BUFFER_INCREMENT]),
		    &(omr->messages[omr->msg_toget]),
		    sizeof(Event)*(old_ring_buffer_size - omr->msg_toget)
		    );
	    omr->msg_toget += EVENTS_RING_BUFFER_INCREMENT;
	}
    }
    omr->messages[omr->msg_tosave] = *evt;
    FUNC3(omr->msg_event);
    omr->msg_tosave = (omr->msg_tosave + 1) % omr->ring_buffer_size;
    FUNC2(&omr->msg_crst);
    return TRUE;
}