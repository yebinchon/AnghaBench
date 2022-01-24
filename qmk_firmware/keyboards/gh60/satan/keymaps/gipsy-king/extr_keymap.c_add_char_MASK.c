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
 int RGBLED_NUM ; 
 int cursor_pos ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void FUNC5(bool space) {
  if (cursor_pos == RGBLED_NUM - 1) {
    cursor_pos = 0;
    FUNC0();
    return;
  }

  if (space) {
    FUNC4(0, 0, 0, cursor_pos);
  } else {
    FUNC4(FUNC1(), FUNC2(), FUNC3(), cursor_pos);
  }
  cursor_pos += 1;
}