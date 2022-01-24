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
struct usb_module {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* callback ) () ;} ;

/* Variables and functions */
 scalar_t__ UDD_EPCTRL_DATA_IN ; 
 scalar_t__ UDD_EPCTRL_DATA_OUT ; 
 scalar_t__ UDD_EPCTRL_SETUP ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 scalar_t__ udd_ep_control_state ; 
 TYPE_1__ udd_g_ctrlreq ; 

__attribute__((used)) static void FUNC3(struct usb_module *module_inst, void *pointer) {
    if (UDD_EPCTRL_DATA_OUT == udd_ep_control_state) { /* handshake Out for status stage */
        FUNC2(pointer);
    } else if (UDD_EPCTRL_DATA_IN == udd_ep_control_state) { /* handshake In for status stage */
        FUNC1();
    } else {
        if (NULL != udd_g_ctrlreq.callback) {
            udd_g_ctrlreq.callback();
        }
        udd_ep_control_state = UDD_EPCTRL_SETUP;
    }
}