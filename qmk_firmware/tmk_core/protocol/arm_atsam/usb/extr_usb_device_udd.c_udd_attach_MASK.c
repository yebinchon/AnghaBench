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

/* Variables and functions */
 int /*<<< orphan*/  UDD_STATE_IDLE ; 
 int /*<<< orphan*/  USB_DEVICE_CALLBACK_LPMSUSP ; 
 int /*<<< orphan*/  USB_DEVICE_CALLBACK_RESET ; 
 int /*<<< orphan*/  USB_DEVICE_CALLBACK_SOF ; 
 int /*<<< orphan*/  USB_DEVICE_CALLBACK_SUSPEND ; 
 int /*<<< orphan*/  USB_DEVICE_CALLBACK_WAKEUP ; 
 int /*<<< orphan*/  _usb_device_lpm_suspend ; 
 int /*<<< orphan*/  _usb_on_bus_reset ; 
 int /*<<< orphan*/  _usb_on_sof_notify ; 
 int /*<<< orphan*/  _usb_on_suspend ; 
 int /*<<< orphan*/  _usb_on_wakeup ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  usb_device ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4(void) {
    FUNC0(UDD_STATE_IDLE);
    FUNC1(&usb_device);

    FUNC3(&usb_device, USB_DEVICE_CALLBACK_SUSPEND, _usb_on_suspend);
    FUNC3(&usb_device, USB_DEVICE_CALLBACK_SOF, _usb_on_sof_notify);
    FUNC3(&usb_device, USB_DEVICE_CALLBACK_RESET, _usb_on_bus_reset);
    FUNC3(&usb_device, USB_DEVICE_CALLBACK_WAKEUP, _usb_on_wakeup);

    FUNC2(&usb_device, USB_DEVICE_CALLBACK_SUSPEND);
    FUNC2(&usb_device, USB_DEVICE_CALLBACK_SOF);
    FUNC2(&usb_device, USB_DEVICE_CALLBACK_RESET);
    FUNC2(&usb_device, USB_DEVICE_CALLBACK_WAKEUP);
#ifdef USB_DEVICE_LPM_SUPPORT
    usb_device_register_callback(&usb_device, USB_DEVICE_CALLBACK_LPMSUSP, _usb_device_lpm_suspend);
    usb_device_enable_callback(&usb_device, USB_DEVICE_CALLBACK_LPMSUSP);
#endif
}