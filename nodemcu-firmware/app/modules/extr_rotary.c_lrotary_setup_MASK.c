#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_4__ {unsigned int id; int click_delay_us; int longpress_delay_us; int /*<<< orphan*/ * callback; int /*<<< orphan*/  timer; } ;
typedef  TYPE_1__ DATA ;

/* Variables and functions */
 int CALLBACK_COUNT ; 
 int CLICK_DELAY_US ; 
 int LONGPRESS_DELAY_US ; 
 int /*<<< orphan*/  LUA_NOREF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  ROTARY_ALL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SWTIMER_RESUME ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int,int) ; 
 TYPE_1__** data ; 
 int /*<<< orphan*/  lrotary_timer_done ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int,char*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int) ; 
 int FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 scalar_t__ FUNC10 (int) ; 
 int /*<<< orphan*/  rotary ; 
 scalar_t__ FUNC11 (unsigned int) ; 
 scalar_t__ FUNC12 (unsigned int,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tasknumber ; 

__attribute__((used)) static int FUNC13( lua_State* L )
{
  unsigned int id;

  id = FUNC5( L, 1 );
  FUNC0( rotary, id );

  if (FUNC11(id)) {
    return FUNC6( L, "Unable to close switch." );
  }
  FUNC2(L, id, ROTARY_ALL);

  if (!data[id]) {
    data[id] = (DATA *) FUNC3(1, sizeof(DATA));
    if (!data[id]) {
      return -1;
    }
  }

  DATA *d = data[id];
  FUNC8(d, 0, sizeof(*d));

  d->id = id;

  FUNC9(&d->timer, lrotary_timer_done, (void *) d);
  FUNC1(lrotary_timer_done, SWTIMER_RESUME);
    //lrotary_timer_done checks time elapsed since last event
    //My guess: Since proper functionality relies on some variables to be reset via timer callback and state would be invalid anyway.
      //It is probably best to resume this timer so it can reset it's state variables


  int i;
  for (i = 0; i < CALLBACK_COUNT; i++) {
    d->callback[i] = LUA_NOREF;
  }

  d->click_delay_us = CLICK_DELAY_US;
  d->longpress_delay_us = LONGPRESS_DELAY_US;

  int phase_a = FUNC5(L, 2);
  FUNC4(L, FUNC10(phase_a) && phase_a > 0, 2, "Invalid pin");
  int phase_b = FUNC5(L, 3);
  FUNC4(L, FUNC10(phase_b) && phase_b > 0, 3, "Invalid pin");
  int press;
  if (FUNC7(L) >= 4) {
    press = FUNC5(L, 4);
    FUNC4(L, FUNC10(press) && press > 0, 4, "Invalid pin");
  } else {
    press = -1;
  }

  if (FUNC7(L) >= 5) {
    d->longpress_delay_us = 1000 * FUNC5(L, 5);
    FUNC4(L, d->longpress_delay_us > 0, 5, "Invalid timeout");
  }

  if (FUNC7(L) >= 6) {
    d->click_delay_us = 1000 * FUNC5(L, 6);
    FUNC4(L, d->click_delay_us > 0, 6, "Invalid timeout");
  }

  if (FUNC12(id, phase_a, phase_b, press, tasknumber)) {
    return FUNC6(L, "Unable to setup rotary switch.");
  }
  return 0;
}