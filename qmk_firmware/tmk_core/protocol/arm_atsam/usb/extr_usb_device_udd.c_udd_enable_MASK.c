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
typedef  int /*<<< orphan*/  uint32_t ;
struct usb_config {int /*<<< orphan*/  source_generator; } ;

/* Variables and functions */
 int /*<<< orphan*/  UDD_CLOCK_GEN ; 
 int /*<<< orphan*/  UDD_STATE_SUSPEND ; 
 int /*<<< orphan*/  USB ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  usb_device ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct usb_config*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct usb_config*) ; 

void FUNC10(void) {
    uint32_t irqflags;

    /* To avoid USB interrupt before end of initialization */
    irqflags = FUNC2();
    FUNC1();
    FUNC0();

    struct usb_config config_usb;

    /* USB Module configuration */
    FUNC8(&config_usb);
    config_usb.source_generator = UDD_CLOCK_GEN;
    FUNC9(&usb_device, USB, &config_usb);

    /* USB Module Enable */
    FUNC7(&usb_device);

    /* Check clock after enable module, request the clock */
    FUNC6();

    FUNC5(UDD_STATE_SUSPEND);

    // No VBus detect, assume always high
#ifndef USB_DEVICE_ATTACH_AUTO_DISABLE
    FUNC4();
#endif

    FUNC0();
    FUNC3(irqflags);
}