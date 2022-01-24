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
 int /*<<< orphan*/  KC_LGUI ; 
 int is_lgui_active ; 
 int /*<<< orphan*/  lgui_timer ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(void) { 
  if (is_lgui_active) {
    if (FUNC0(lgui_timer) > 1000) {
      FUNC1(KC_LGUI);
      is_lgui_active = false;
    }
  }
}