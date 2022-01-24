#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int pos; scalar_t__ time_us; } ;
typedef  TYPE_1__ rotary_event_t ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_8__ {int lastpos; int last_recent_event_was_release; scalar_t__ last_event_time; scalar_t__ click_delay_us; int possible_dbl_click; int last_recent_event_was_press; int /*<<< orphan*/  id; } ;
typedef  TYPE_2__ DATA ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  ROTARY_DBLCLICK_INDEX ; 
 int /*<<< orphan*/  ROTARY_PRESS_INDEX ; 
 int /*<<< orphan*/  ROTARY_RELEASE_INDEX ; 
 int /*<<< orphan*/  ROTARY_TURN_INDEX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,scalar_t__,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 () ; 

__attribute__((used)) static bool FUNC5(lua_State* L, DATA *d)
{
  bool something_pending = FALSE;

  if (d) {
    // This chnnel is open
    rotary_event_t result;

    if (FUNC2(d->id, &result)) {
      int pos = result.pos;

      FUNC1(d, result.time_us, 0);

      if (pos != d->lastpos) {
	// We have something to enqueue
	if ((pos ^ d->lastpos) & 0x7fffffff) {
	  // Some turning has happened
	  FUNC0(L, d, ROTARY_TURN_INDEX, (pos << 1) >> 1, result.time_us);
	}
	if ((pos ^ d->lastpos) & 0x80000000) {
	  // pressing or releasing has happened
	  FUNC0(L, d, (pos & 0x80000000) ? ROTARY_PRESS_INDEX : ROTARY_RELEASE_INDEX, (pos << 1) >> 1, result.time_us);
	  if (pos & 0x80000000) {
	    // Press
	    if (d->last_recent_event_was_release && result.time_us - d->last_event_time < d->click_delay_us) {
	      d->possible_dbl_click = 1;
	    }
	    d->last_recent_event_was_press = 1;
	    d->last_recent_event_was_release = 0;
	  } else {
	    // Release
	    d->last_recent_event_was_press = 0;
	    if (d->possible_dbl_click) {
	      FUNC0(L, d, ROTARY_DBLCLICK_INDEX, (pos << 1) >> 1, result.time_us);
	      d->possible_dbl_click = 0;
	      // Do this to suppress the CLICK event
	      d->last_recent_event_was_release = 0;
	    } else {
	      d->last_recent_event_was_release = 1;
	    }
	  }
	  d->last_event_time = result.time_us;
	}

	d->lastpos = pos;
      }

      something_pending = FUNC3(d->id);
    }

    FUNC1(d, FUNC4(), 1);
  }

  return something_pending;
}