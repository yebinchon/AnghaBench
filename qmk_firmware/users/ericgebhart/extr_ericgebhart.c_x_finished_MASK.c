#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  qk_tap_dance_state_t ;
struct TYPE_2__ {int state; } ;

/* Variables and functions */
#define  DOUBLE_HOLD 132 
#define  DOUBLE_SINGLE_TAP 131 
#define  DOUBLE_TAP 130 
 int /*<<< orphan*/  KC_ESC ; 
 int MOD_LCTL ; 
 int MOD_LGUI ; 
 int MOD_LSFT ; 
 int /*<<< orphan*/  ONESHOT_START ; 
#define  SINGLE_HOLD 129 
#define  SINGLE_TAP 128 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_1__ xtap_state ; 

void FUNC7 (qk_tap_dance_state_t *state, void *user_data) {
  int xmonad_layer = FUNC1();
  xtap_state.state = FUNC0(state);
  switch (xtap_state.state) {
  case SINGLE_TAP:
    FUNC3(KC_ESC);
    break;
  case SINGLE_HOLD:
    FUNC2(xmonad_layer);
    FUNC5 (MOD_LGUI);
    //set_oneshot_layer (DVORAK, ONESHOT_START);
    break;
  case DOUBLE_TAP:
    FUNC5 ((MOD_LCTL | MOD_LGUI));
    FUNC2 (xmonad_layer);
    FUNC4 (xmonad_layer, ONESHOT_START);
    break;
  case DOUBLE_HOLD:
    FUNC5 (MOD_LSFT | MOD_LGUI);
    if (xmonad_layer != -1)
      FUNC2(xmonad_layer);
    break;
  case DOUBLE_SINGLE_TAP:
    FUNC3(KC_ESC);
    FUNC6(KC_ESC);
    FUNC3(KC_ESC);
    //Last case is for fast typing. Assuming your key is `f`:
    //For example, when typing the word `buffer`, and you want to make sure that you send `ff` and not `Esc`.
    //In order to type `ff` when typing fast, the next character will have to be hit within the `TAPPING_TERM`, which by default is 200ms.
  }
}