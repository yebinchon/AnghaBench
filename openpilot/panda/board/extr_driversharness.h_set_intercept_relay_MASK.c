#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_1__* harness_config; } ;
struct TYPE_3__ {int /*<<< orphan*/  pin_relay_flipped; int /*<<< orphan*/  GPIO_relay_flipped; int /*<<< orphan*/  pin_relay_normal; int /*<<< orphan*/  GPIO_relay_normal; } ;

/* Variables and functions */
 scalar_t__ HARNESS_STATUS_NC ; 
 scalar_t__ HARNESS_STATUS_NORMAL ; 
 scalar_t__ car_harness_status ; 
 TYPE_2__* current_board ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void FUNC2(bool intercept) {
  if (car_harness_status != HARNESS_STATUS_NC) {
    if (intercept) {
      FUNC0("switching harness to intercept (relay on)\n");
    } else {
      FUNC0("switching harness to passthrough (relay off)\n");
    }

    if(car_harness_status == HARNESS_STATUS_NORMAL){
      FUNC1(current_board->harness_config->GPIO_relay_normal, current_board->harness_config->pin_relay_normal, !intercept);
    } else {
      FUNC1(current_board->harness_config->GPIO_relay_flipped, current_board->harness_config->pin_relay_flipped, !intercept);
    }
  }
}