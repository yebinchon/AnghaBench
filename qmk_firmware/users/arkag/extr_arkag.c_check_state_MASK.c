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
typedef  scalar_t__ uint16_t ;

/* Variables and functions */
 int /*<<< orphan*/  INACTIVE_DELAY ; 
 int /*<<< orphan*/  SLEEP_DELAY ; 
#define  active 131 
#define  boot 130 
 int /*<<< orphan*/  fade_interval ; 
#define  inactive 129 
 int /*<<< orphan*/  FUNC0 (int) ; 
#define  sleeping 128 
 int state ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

void FUNC5 (void) {
  static uint16_t active_timer;
  if (!active_timer) {active_timer = FUNC2();}
  static bool activated, deactivated, slept;
  switch (state) {
  case active:
    if (!activated) {
      if (slept) {FUNC0(1);}
      activated = true;
      deactivated = false;
      slept = false;
    }
    fade_interval = FUNC4(1, 25);
    if (FUNC1(active_timer) < INACTIVE_DELAY) {return;}
    active_timer = FUNC2();
    state = inactive;
    return;

  case inactive:
    if (!deactivated) {
      deactivated = true;
      activated = false;
      slept = false;
    }
    FUNC3();
    fade_interval = FUNC4(1, 25);
    if (FUNC1(active_timer) < SLEEP_DELAY) {return;}
    state = sleeping;
    return;

  case sleeping:
    if (!slept) {
      FUNC0(5);
      slept = true;
      activated = false;
      deactivated = false;
    }
    return;

  case boot:
    return;
  }
}