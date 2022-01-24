#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int pulseResolutions; int resolutionInterruptCounterMultiplier; } ;
typedef  TYPE_1__ pwm2_pin_setup_t ;
struct TYPE_6__ {int pulseInterruptCcounter; } ;
typedef  TYPE_2__ pwm2_pin_interrupt_t ;

/* Variables and functions */

__attribute__((used)) static void FUNC0(pwm2_pin_interrupt_t *iPin, pwm2_pin_setup_t *sPin) {
  iPin->pulseInterruptCcounter = (sPin->pulseResolutions + 1) * sPin->resolutionInterruptCounterMultiplier;
}