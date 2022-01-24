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
 int /*<<< orphan*/  ADCCHAN_ACCEL0 ; 
 int /*<<< orphan*/  ADCCHAN_ACCEL1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ NO_FAULT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gas_set_0 ; 
 int /*<<< orphan*/  gas_set_1 ; 
 int /*<<< orphan*/  pdl0 ; 
 int /*<<< orphan*/  pdl1 ; 
 scalar_t__ state ; 
 int /*<<< orphan*/  FUNC3 () ; 

void FUNC4(void) {
  // read/write
  pdl0 = FUNC1(ADCCHAN_ACCEL0);
  pdl1 = FUNC1(ADCCHAN_ACCEL1);

  // write the pedal to the DAC
  if (state == NO_FAULT) {
    FUNC2(0, FUNC0(gas_set_0, pdl0));
    FUNC2(1, FUNC0(gas_set_1, pdl1));
  } else {
    FUNC2(0, pdl0);
    FUNC2(1, pdl1);
  }

  FUNC3();
}