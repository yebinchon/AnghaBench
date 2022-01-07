
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef double uint16_t ;


 int ADC_CON1 ;
 int ADC_CON2 ;
 double USB_EXTRA_ADC_THRESHOLD ;
 scalar_t__ USB_EXTRA_STATE_DISABLED ;
 scalar_t__ USB_EXTRA_STATE_DISABLED_UNTIL_REPLUG ;
 scalar_t__ USB_EXTRA_STATE_ENABLED ;
 int USB_ExtraSetState (scalar_t__) ;
 scalar_t__ USB_HOST_PORT_1 ;
 scalar_t__ USB_HOST_PORT_2 ;
 double adc_extra ;
 double adc_get (int ) ;
 scalar_t__ usb_extra_manual ;
 scalar_t__ usb_extra_state ;
 scalar_t__ usb_host_port ;

void USB_HandleExtraDevice(void) {
    uint16_t adcval;

    if (usb_host_port == USB_HOST_PORT_1)
        adcval = adc_get(ADC_CON2);
    else if (usb_host_port == USB_HOST_PORT_2)
        adcval = adc_get(ADC_CON1);
    else
        return;

    adc_extra = adc_extra * 0.9 + adcval * 0.1;


    if (usb_extra_state == USB_EXTRA_STATE_DISABLED_UNTIL_REPLUG) {

        if (adc_extra > USB_EXTRA_ADC_THRESHOLD) usb_extra_state = USB_EXTRA_STATE_DISABLED;

        return;
    }

    if (usb_extra_manual) {
        if (usb_extra_state == USB_EXTRA_STATE_DISABLED) USB_ExtraSetState(USB_EXTRA_STATE_ENABLED);

        return;
    }


    if (usb_extra_state == USB_EXTRA_STATE_DISABLED && adc_extra < USB_EXTRA_ADC_THRESHOLD)
        USB_ExtraSetState(USB_EXTRA_STATE_ENABLED);
    else if (usb_extra_state == USB_EXTRA_STATE_ENABLED && adc_extra > USB_EXTRA_ADC_THRESHOLD)
        USB_ExtraSetState(USB_EXTRA_STATE_DISABLED);
}
