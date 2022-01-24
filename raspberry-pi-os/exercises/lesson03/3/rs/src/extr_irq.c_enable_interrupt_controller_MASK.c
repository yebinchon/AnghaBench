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
 int /*<<< orphan*/  ARM_TIMER_IRQ ; 
 int /*<<< orphan*/  ENABLE_BASIC_IRQS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC1() {
  //   put32(ENABLE_IRQS_1, SYSTEM_TIMER_IRQ_1);
  FUNC0(ENABLE_BASIC_IRQS, ARM_TIMER_IRQ);
}