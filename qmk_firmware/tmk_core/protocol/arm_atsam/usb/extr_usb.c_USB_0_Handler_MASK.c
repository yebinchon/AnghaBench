#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_4__* hw; } ;
struct TYPE_6__ {scalar_t__ MODE; } ;
struct TYPE_7__ {TYPE_1__ bit; } ;
struct TYPE_8__ {TYPE_2__ CTRLA; } ;
struct TYPE_9__ {TYPE_3__ DEVICE; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_5__* _usb_instances ; 

void FUNC1(void) {
    if (_usb_instances->hw->DEVICE.CTRLA.bit.MODE) {
    } else {
        /*device mode ISR */
        FUNC0();
    }
}