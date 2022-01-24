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
 int /*<<< orphan*/  UDD_STATE_IDLE ; 
 int /*<<< orphan*/  USB_DEVICE_CALLBACK_LPMSUSP ; 
 int /*<<< orphan*/  USB_DEVICE_CALLBACK_SUSPEND ; 
 int /*<<< orphan*/  USB_DEVICE_CALLBACK_WAKEUP ; 
 int /*<<< orphan*/  _usb_device_lpm_suspend ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  usb_device ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct usb_module *module_inst, void *pointer) {
    FUNC2();

    FUNC3(&usb_device, USB_DEVICE_CALLBACK_WAKEUP);
    FUNC4(&usb_device, USB_DEVICE_CALLBACK_SUSPEND);
#ifdef USB_DEVICE_LPM_SUPPORT
    usb_device_register_callback(&usb_device, USB_DEVICE_CALLBACK_LPMSUSP, _usb_device_lpm_suspend);
    usb_device_enable_callback(&usb_device, USB_DEVICE_CALLBACK_LPMSUSP);
#endif
    FUNC1(UDD_STATE_IDLE);
#ifdef UDC_RESUME_EVENT
    UDC_RESUME_EVENT();
#endif
}