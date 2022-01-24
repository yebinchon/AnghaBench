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
struct TYPE_2__ {int /*<<< orphan*/  sticky; int /*<<< orphan*/  layer_toggle; } ;
typedef  TYPE_1__ td_ta_state_t ;
typedef  int /*<<< orphan*/  qk_tap_dance_state_t ;

/* Variables and functions */
 int /*<<< orphan*/  ARRW ; 
 int /*<<< orphan*/  KC_TAB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2 (qk_tap_dance_state_t *state, void *user_data) {
  td_ta_state_t *td_ta = (td_ta_state_t *) user_data;

  if (!td_ta->layer_toggle)
    FUNC1 (KC_TAB);
  if (!td_ta->sticky)
    FUNC0 (ARRW);
}