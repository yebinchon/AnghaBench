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
struct TYPE_2__ {int /*<<< orphan*/  payload; } ;

/* Variables and functions */
 int /*<<< orphan*/  UDD_EPCTRL_HANDSHAKE_WAIT_IN_ZLP ; 
 int /*<<< orphan*/  udd_ctrl_buffer ; 
 int /*<<< orphan*/  udd_ep_control_state ; 
 TYPE_1__ udd_g_ctrlreq ; 
 int /*<<< orphan*/  usb_device ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(void) {
    udd_ep_control_state = UDD_EPCTRL_HANDSHAKE_WAIT_IN_ZLP;
    FUNC0(&usb_device, udd_ctrl_buffer);
    FUNC1(&usb_device, 0, udd_g_ctrlreq.payload, 0);
}