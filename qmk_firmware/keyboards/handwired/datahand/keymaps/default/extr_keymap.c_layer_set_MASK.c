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
typedef  int /*<<< orphan*/  uint8_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNCTION_ARROWS ; 
 int /*<<< orphan*/  FUNCTION_MOUSE ; 
 int LED_FN ; 
 int LED_NAS ; 
 int LED_NORMAL ; 
 int LED_TENKEY ; 
 int /*<<< orphan*/  NAS ; 
 int /*<<< orphan*/  NAS_NUMLOCK ; 
 int /*<<< orphan*/  NAS_TENKEY ; 
 int /*<<< orphan*/  NAS_TENKEY_NUMLOCK ; 
 int /*<<< orphan*/  NORMAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ tenkey_enabled ; 

__attribute__((used)) static void FUNC4(bool on, uint8_t layer) {
  if (on) {
    FUNC1(layer);
  } else {
    FUNC0(layer);
  }

  if (FUNC2(NAS) || FUNC2(NAS_NUMLOCK) || FUNC2(NAS_TENKEY) || FUNC2(NAS_TENKEY_NUMLOCK)) {
    if (tenkey_enabled) {
      FUNC3(LED_NAS | LED_TENKEY);
    } else {
      FUNC3(LED_NAS);
    }
  } else if (FUNC2(FUNCTION_MOUSE) || FUNC2(FUNCTION_ARROWS)) {
    FUNC3(LED_FN);
  } else if (FUNC2(NORMAL)) {
    FUNC3(LED_NORMAL);
  }
}