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

/* Variables and functions */
#define  DOUBLE 130 
#define  SINGLE_HOLD 129 
#define  TRIPLE 128 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ tap_dance_active ; 
 int tap_dance_state ; 
 int /*<<< orphan*/  timer ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 

void FUNC5(bool override_timer) {
  if (tap_dance_active)
  {
    if (FUNC3(timer) > 100 || override_timer)
    {
      switch (tap_dance_state)
      {
        case SINGLE_HOLD:
        {
          FUNC0();
          break;
        }

        case DOUBLE:
        {
          FUNC1();
          break;
        }

        case TRIPLE:
        {
          FUNC2();
          break;
        }

        default:
          // Not needed
          break;
      }

      timer = FUNC4();
    }
  }
}