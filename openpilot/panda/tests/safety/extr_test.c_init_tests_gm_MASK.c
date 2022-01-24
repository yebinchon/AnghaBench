#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ max; scalar_t__ min; } ;

/* Variables and functions */
 scalar_t__ gm_desired_torque_last ; 
 scalar_t__ gm_rt_torque_last ; 
 TYPE_1__ gm_torque_driver ; 
 scalar_t__ gm_ts_last ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(void){
  FUNC0();
  gm_torque_driver.min = 0;
  gm_torque_driver.max = 0;
  gm_desired_torque_last = 0;
  gm_rt_torque_last = 0;
  gm_ts_last = 0;
  FUNC1(0);
}