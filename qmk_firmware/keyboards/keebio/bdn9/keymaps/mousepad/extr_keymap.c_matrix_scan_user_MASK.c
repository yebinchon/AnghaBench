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
 int /*<<< orphan*/  KC_LALT ; 
 int /*<<< orphan*/  alt_tab_timer ; 
 int is_alt_tab_active ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(void) {     // The very important timer.
  if (is_alt_tab_active) {
    if (FUNC0(alt_tab_timer) > 1000) {
      FUNC1(KC_LALT);
      is_alt_tab_active = false;
    }
  }
}