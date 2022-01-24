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
typedef  int /*<<< orphan*/  CameraState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  MSM_CAMERA_I2C_BYTE_DATA ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,double,double) ; 
 int /*<<< orphan*/  start_reg_array ; 

__attribute__((used)) static void FUNC4(CameraState *s) {
  int err;

  FUNC3(s, 1.0, 1.0);

  err = FUNC2(s, start_reg_array, FUNC0(start_reg_array), MSM_CAMERA_I2C_BYTE_DATA);
  FUNC1("sensor start regs: %d", err);
}