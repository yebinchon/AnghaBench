
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int SRC_1; int SRC_2; int E_UP_N; int E_DN1_N; int E_VBUS_1; int E_VBUS_2; int S_UP; int S_DN1; } ;
struct TYPE_4__ {TYPE_1__ bit; } ;


 int ADC_5V ;
 void* ADC_5V_START_LEVEL ;
 int ADC_CON1 ;
 int ADC_CON2 ;
 int DBGC (int ) ;
 int DC_USB_SET_HOST_5V_LOW_WAITING ;
 int DC_USB_SET_HOST_BY_VOLTAGE_BEGIN ;
 int DC_USB_SET_HOST_BY_VOLTAGE_COMPLETE ;
 int SR_EXP_WriteData () ;
 int USB_EXTRA_STATE_DISABLED ;
 int USB_EXTRA_STATE_UNKNOWN ;
 int USB_HOST_PORT_1 ;
 int USB_HOST_PORT_2 ;
 int USB_HOST_PORT_UNKNOWN ;
 int USB_configure () ;
 int USB_reset () ;
 void* adc_get (int ) ;
 TYPE_2__ sr_exp_data ;
 int usb_extra_state ;
 int usb_host_port ;
 void* v_5v ;
 scalar_t__ v_con_1 ;
 scalar_t__ v_con_1_boot ;
 scalar_t__ v_con_2 ;
 scalar_t__ v_con_2_boot ;
 int wait_ms (int) ;

void USB_set_host_by_voltage(void) {




    DBGC(DC_USB_SET_HOST_BY_VOLTAGE_BEGIN);

    usb_host_port = USB_HOST_PORT_UNKNOWN;

    usb_extra_state = USB_EXTRA_STATE_UNKNOWN;

    sr_exp_data.bit.SRC_1 = 1;
    sr_exp_data.bit.SRC_2 = 1;
    sr_exp_data.bit.E_UP_N = 1;
    sr_exp_data.bit.E_DN1_N = 1;
    sr_exp_data.bit.E_VBUS_1 = 0;
    sr_exp_data.bit.E_VBUS_2 = 0;

    SR_EXP_WriteData();

    wait_ms(250);

    while ((v_5v = adc_get(ADC_5V)) < ADC_5V_START_LEVEL) {
        DBGC(DC_USB_SET_HOST_5V_LOW_WAITING);
    }

    v_con_1 = adc_get(ADC_CON1);
    v_con_2 = adc_get(ADC_CON2);

    v_con_1_boot = v_con_1;
    v_con_2_boot = v_con_2;

    if (v_con_1 > v_con_2) {
        sr_exp_data.bit.S_UP = 0;
        sr_exp_data.bit.S_DN1 = 1;
        sr_exp_data.bit.SRC_1 = 1;
        sr_exp_data.bit.SRC_2 = 0;

        sr_exp_data.bit.E_VBUS_1 = 1;
        sr_exp_data.bit.E_VBUS_2 = 0;

        SR_EXP_WriteData();

        sr_exp_data.bit.E_UP_N = 0;

        SR_EXP_WriteData();

        usb_host_port = USB_HOST_PORT_1;
    } else {
        sr_exp_data.bit.S_UP = 1;
        sr_exp_data.bit.S_DN1 = 0;
        sr_exp_data.bit.SRC_1 = 0;
        sr_exp_data.bit.SRC_2 = 1;

        sr_exp_data.bit.E_VBUS_1 = 0;
        sr_exp_data.bit.E_VBUS_2 = 1;

        SR_EXP_WriteData();

        sr_exp_data.bit.E_UP_N = 0;

        SR_EXP_WriteData();

        usb_host_port = USB_HOST_PORT_2;
    }


    usb_extra_state = USB_EXTRA_STATE_DISABLED;


    USB_reset();
    USB_configure();

    DBGC(DC_USB_SET_HOST_BY_VOLTAGE_COMPLETE);
}
