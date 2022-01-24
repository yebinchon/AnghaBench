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
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAC ; 
 int /*<<< orphan*/  NUM ; 
 int /*<<< orphan*/  QWERTY ; 
 int /*<<< orphan*/  current_layer_state ; 
 scalar_t__ is_macro1_recording ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 

uint32_t FUNC7(uint32_t state) {
  current_layer_state = state;

  if (is_macro1_recording) {
    FUNC2();
    FUNC4();
    FUNC6();
    return state;
  }

  if (FUNC0(NUM)) {
    FUNC2();
  } else {
    FUNC1();
  }

  if (FUNC0(MAC)) {
    FUNC4();
  } else {
    FUNC3();
  }

  if (FUNC0(QWERTY)) {
    FUNC6();
  } else {
    FUNC5();
  }

  return state;
}