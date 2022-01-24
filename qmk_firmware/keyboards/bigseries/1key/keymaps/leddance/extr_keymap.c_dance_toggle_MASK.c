#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int count; } ;
typedef  TYPE_1__ qk_tap_dance_state_t ;
struct TYPE_5__ {int /*<<< orphan*/  enable; } ;

/* Variables and functions */
 int /*<<< orphan*/  LED ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 TYPE_2__ rgblight_config ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 

void FUNC8 (qk_tap_dance_state_t *state, void *user_data) {
  if (state->count >= 2) {
    FUNC5("Double tapped, switching layers");
    if (FUNC3(LED)) {
      FUNC1(LED);
    } else {
      FUNC2(LED);
    }
  } else {
    FUNC4("Single tapped: ");
    if (FUNC3(LED)) {
#ifdef RGBLIGHT_ENABLE
      if (!rgblight_config.enable) {
        rgblight_enable();
      }
      rgblight_step();
#endif
    } else {
      FUNC5("Base layer, sending string");
      FUNC0("This thing is BIG!!\n");
    }
  }
}