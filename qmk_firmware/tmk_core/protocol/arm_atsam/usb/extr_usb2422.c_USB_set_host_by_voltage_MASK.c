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
struct TYPE_3__ {int SRC_1; int SRC_2; int E_UP_N; int E_DN1_N; int E_VBUS_1; int E_VBUS_2; int S_UP; int S_DN1; } ;
struct TYPE_4__ {TYPE_1__ bit; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADC_5V ; 
 void* ADC_5V_START_LEVEL ; 
 int /*<<< orphan*/  ADC_CON1 ; 
 int /*<<< orphan*/  ADC_CON2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DC_USB_SET_HOST_5V_LOW_WAITING ; 
 int /*<<< orphan*/  DC_USB_SET_HOST_BY_VOLTAGE_BEGIN ; 
 int /*<<< orphan*/  DC_USB_SET_HOST_BY_VOLTAGE_COMPLETE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  USB_EXTRA_STATE_DISABLED ; 
 int /*<<< orphan*/  USB_EXTRA_STATE_UNKNOWN ; 
 int /*<<< orphan*/  USB_HOST_PORT_1 ; 
 int /*<<< orphan*/  USB_HOST_PORT_2 ; 
 int /*<<< orphan*/  USB_HOST_PORT_UNKNOWN ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_2__ sr_exp_data ; 
 int /*<<< orphan*/  usb_extra_state ; 
 int /*<<< orphan*/  usb_host_port ; 
 void* v_5v ; 
 scalar_t__ v_con_1 ; 
 scalar_t__ v_con_1_boot ; 
 scalar_t__ v_con_2 ; 
 scalar_t__ v_con_2_boot ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

void FUNC6(void) {
    // UP is upstream device (HOST)
    // DN1 is downstream device (EXTRA)
    // DN2 is keyboard (KEYB)

    FUNC0(DC_USB_SET_HOST_BY_VOLTAGE_BEGIN);

    usb_host_port = USB_HOST_PORT_UNKNOWN;
#ifndef MD_BOOTLOADER
    usb_extra_state = USB_EXTRA_STATE_UNKNOWN;
#endif                             // MD_BOOTLOADER
    sr_exp_data.bit.SRC_1    = 1;  // USBC-1 available for test
    sr_exp_data.bit.SRC_2    = 1;  // USBC-2 available for test
    sr_exp_data.bit.E_UP_N   = 1;  // HOST disable
    sr_exp_data.bit.E_DN1_N  = 1;  // EXTRA disable
    sr_exp_data.bit.E_VBUS_1 = 0;  // USBC-1 disable full power I/O
    sr_exp_data.bit.E_VBUS_2 = 0;  // USBC-2 disable full power I/O

    FUNC1();

    FUNC5(250);

    while ((v_5v = FUNC4(ADC_5V)) < ADC_5V_START_LEVEL) {
        FUNC0(DC_USB_SET_HOST_5V_LOW_WAITING);
    }

    v_con_1 = FUNC4(ADC_CON1);
    v_con_2 = FUNC4(ADC_CON2);

    v_con_1_boot = v_con_1;
    v_con_2_boot = v_con_2;

    if (v_con_1 > v_con_2) {
        sr_exp_data.bit.S_UP  = 0;  // HOST to USBC-1
        sr_exp_data.bit.S_DN1 = 1;  // EXTRA to USBC-2
        sr_exp_data.bit.SRC_1 = 1;  // HOST on USBC-1
        sr_exp_data.bit.SRC_2 = 0;  // EXTRA available on USBC-2

        sr_exp_data.bit.E_VBUS_1 = 1;  // USBC-1 enable full power I/O
        sr_exp_data.bit.E_VBUS_2 = 0;  // USBC-2 disable full power I/O

        FUNC1();

        sr_exp_data.bit.E_UP_N = 0;  // HOST enable

        FUNC1();

        usb_host_port = USB_HOST_PORT_1;
    } else {
        sr_exp_data.bit.S_UP  = 1;  // EXTRA to USBC-1
        sr_exp_data.bit.S_DN1 = 0;  // HOST to USBC-2
        sr_exp_data.bit.SRC_1 = 0;  // EXTRA available on USBC-1
        sr_exp_data.bit.SRC_2 = 1;  // HOST on USBC-2

        sr_exp_data.bit.E_VBUS_1 = 0;  // USBC-1 disable full power I/O
        sr_exp_data.bit.E_VBUS_2 = 1;  // USBC-2 enable full power I/O

        FUNC1();

        sr_exp_data.bit.E_UP_N = 0;  // HOST enable

        FUNC1();

        usb_host_port = USB_HOST_PORT_2;
    }

#ifndef MD_BOOTLOADER
    usb_extra_state = USB_EXTRA_STATE_DISABLED;
#endif  // MD_BOOTLOADER

    FUNC3();
    FUNC2();

    FUNC0(DC_USB_SET_HOST_BY_VOLTAGE_COMPLETE);
}