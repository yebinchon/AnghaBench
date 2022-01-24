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
 int /*<<< orphan*/  LR_KBCTL ; 
 int /*<<< orphan*/  LR_SYMBOL ; 
 int /*<<< orphan*/  LR_SYSCTL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

uint32_t FUNC2(uint32_t state) {
  uint32_t intermediate_state = FUNC1(state, LR_SYMBOL, LR_SYSCTL, LR_KBCTL);
  intermediate_state = FUNC0(intermediate_state);
  return intermediate_state;
}