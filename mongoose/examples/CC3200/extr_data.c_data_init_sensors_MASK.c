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
 int /*<<< orphan*/  LL_ERROR ; 
 int /*<<< orphan*/  LL_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  TMP006_CONV_2 ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 
 int /*<<< orphan*/ * s_accel_ctx ; 
 int s_tmp006_addr ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int) ; 

void FUNC3(int tmp006_addr, int bm222_addr) {
  s_tmp006_addr = tmp006_addr;
  if (!FUNC2(tmp006_addr, TMP006_CONV_2, false)) {
    FUNC0(LL_ERROR, ("Failed to init temperature sensor"));
  } else {
    FUNC0(LL_INFO, ("Temperature sensor initialized"));
  }
  s_accel_ctx = FUNC1(bm222_addr);
  if (s_accel_ctx == NULL) {
    FUNC0(LL_ERROR, ("Failed to init accelerometer"));
  } else {
    FUNC0(LL_INFO, ("Accelerometer initialized"));
  }
}