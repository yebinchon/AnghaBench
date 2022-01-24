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
struct usb_module {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  UDD_STATE_SUSPEND ; 
 int /*<<< orphan*/  USB_DEVICE_CALLBACK_SUSPEND ; 
 int /*<<< orphan*/  USB_DEVICE_CALLBACK_WAKEUP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  usb_device ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct usb_module *module_inst, void *pointer) {
    FUNC2(&usb_device, USB_DEVICE_CALLBACK_SUSPEND);
    FUNC3(&usb_device, USB_DEVICE_CALLBACK_WAKEUP);
    FUNC1(UDD_STATE_SUSPEND);
#ifdef UDC_SUSPEND_EVENT
    UDC_SUSPEND_EVENT();
#endif
}