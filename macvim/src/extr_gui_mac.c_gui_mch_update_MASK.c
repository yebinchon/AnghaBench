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
struct TYPE_3__ {scalar_t__ what; } ;
typedef  TYPE_1__ EventRecord ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  everyEvent ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ nullEvent ; 

void
FUNC2(void)
{
    /* TODO: find what to do
     *	     maybe call gui_mch_wait_for_chars (0)
     *	     more like look at EventQueue then
     *	     call heart of gui_mch_wait_for_chars;
     *
     *	if (eventther)
     *	    gui_mac_handle_event(&event);
     */
    EventRecord theEvent;

    if (FUNC0(everyEvent, &theEvent))
	if (theEvent.what != nullEvent)
	    FUNC1(0);
}