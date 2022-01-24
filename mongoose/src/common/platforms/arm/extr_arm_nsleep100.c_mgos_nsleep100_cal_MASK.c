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
typedef  float uint32_t ;

/* Variables and functions */
 float FUNC0 () ; 
 int /*<<< orphan*/  mgos_nsleep100 ; 
 int /*<<< orphan*/  mgos_nsleep100_impl ; 
 int /*<<< orphan*/  mgos_nsleep100_loop_count ; 
 int /*<<< orphan*/  FUNC1 (float) ; 

void FUNC2(void) {
  uint32_t cpu_freq = FUNC0();
  /* # of instruction cycles per 100 ns */
  mgos_nsleep100_loop_count =
      FUNC1((100.0f / 1000000000.0f) / (1.0f / cpu_freq));
  mgos_nsleep100 = mgos_nsleep100_impl;
}