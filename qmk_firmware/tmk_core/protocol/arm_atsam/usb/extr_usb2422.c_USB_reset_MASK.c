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
struct TYPE_3__ {int HUB_RESET_N; } ;
struct TYPE_4__ {TYPE_1__ bit; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DC_USB_RESET_BEGIN ; 
 int /*<<< orphan*/  DC_USB_RESET_COMPLETE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_2__ sr_exp_data ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

void FUNC3(void) {
    FUNC0(DC_USB_RESET_BEGIN);

    // pulse reset for at least 1 usec
    sr_exp_data.bit.HUB_RESET_N = 0;  // reset low
    FUNC1();
    FUNC2(2);
    sr_exp_data.bit.HUB_RESET_N = 1;  // reset high to run
    FUNC1();

    FUNC0(DC_USB_RESET_COMPLETE);
}