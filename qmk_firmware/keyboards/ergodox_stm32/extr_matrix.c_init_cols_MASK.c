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
 int /*<<< orphan*/  GPIOB ; 
 int /*<<< orphan*/  PAL_MODE_INPUT_PULLUP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(void) {
  FUNC0(GPIOB, 0, PAL_MODE_INPUT_PULLUP);
  FUNC0(GPIOB, 1, PAL_MODE_INPUT_PULLUP);
  FUNC0(GPIOB, 2, PAL_MODE_INPUT_PULLUP);
  FUNC0(GPIOB, 3, PAL_MODE_INPUT_PULLUP);
  FUNC0(GPIOB, 4, PAL_MODE_INPUT_PULLUP);
  FUNC0(GPIOB, 5, PAL_MODE_INPUT_PULLUP);
}