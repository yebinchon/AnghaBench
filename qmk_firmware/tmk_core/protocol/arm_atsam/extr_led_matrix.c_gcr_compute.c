
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 scalar_t__ ACT_GCR_DEC ;
 scalar_t__ ACT_GCR_INC ;
 scalar_t__ ACT_GCR_NONE ;
 int CDC_print (char*) ;
 int I2C3733_Control_Set (int) ;
 scalar_t__ LED_GCR_MAX ;
 scalar_t__ LED_GCR_STEP_AUTO ;
 scalar_t__ USB_EXTRA_STATE_DISABLED_UNTIL_REPLUG ;
 scalar_t__ USB_EXTRA_STATE_ENABLED ;
 int USB_ExtraSetState (scalar_t__) ;
 scalar_t__ V5_CAT ;
 scalar_t__ V5_HIGH ;
 scalar_t__ V5_LOW ;
 scalar_t__ gcr_actual ;
 scalar_t__ gcr_breathe ;
 scalar_t__ gcr_desired ;
 int gcr_min_counter ;
 int led_animation_breathing ;
 scalar_t__ usb_extra_manual ;
 scalar_t__ usb_extra_state ;
 int usb_gcr_auto ;
 scalar_t__ v_5v ;
 scalar_t__ v_5v_avg ;
 int v_5v_cat_hit ;

void gcr_compute(void) {
    uint8_t action = ACT_GCR_NONE;
    uint8_t gcr_use = gcr_desired;
    if (v_5v < V5_CAT) {
        I2C3733_Control_Set(0);

        v_5v_cat_hit = 20;
        gcr_actual = 0;
        usb_gcr_auto = 1;
        return;
    } else if (v_5v_cat_hit > 1) {
        v_5v_cat_hit--;
        return;
    } else if (v_5v_cat_hit == 1) {
        I2C3733_Control_Set(1);
        CDC_print("USB: WARNING: Re-enabling LED drivers\r\n");
        v_5v_cat_hit = 0;
        return;
    }

    if (usb_gcr_auto) {
        if (v_5v_avg < V5_LOW)
            action = ACT_GCR_DEC;
        else if (v_5v_avg > V5_HIGH && gcr_actual < gcr_use)
            action = ACT_GCR_INC;
        else if (gcr_actual > gcr_use)
            action = ACT_GCR_DEC;
    } else {
        if (gcr_actual < gcr_use)
            action = ACT_GCR_INC;
        else if (gcr_actual > gcr_use)
            action = ACT_GCR_DEC;
    }

    if (action == ACT_GCR_NONE) {
        gcr_min_counter = 0;
    } else if (action == ACT_GCR_INC) {
        if (LED_GCR_STEP_AUTO > LED_GCR_MAX - gcr_actual)
            gcr_actual = LED_GCR_MAX;
        else
            gcr_actual += LED_GCR_STEP_AUTO;
        gcr_min_counter = 0;
    } else if (action == ACT_GCR_DEC) {
        if (LED_GCR_STEP_AUTO > gcr_actual)
        {
            gcr_actual = 0;

            if (usb_extra_state != USB_EXTRA_STATE_DISABLED_UNTIL_REPLUG)
            {
                if (usb_extra_state == USB_EXTRA_STATE_ENABLED)
                {
                    gcr_min_counter++;
                    if (gcr_min_counter > 200)
                    {
                        USB_ExtraSetState(USB_EXTRA_STATE_DISABLED_UNTIL_REPLUG);
                        usb_extra_manual = 0;
                        if (usb_extra_manual)
                            CDC_print("USB: Disabling extra port until replug and manual mode toggle!\r\n");
                        else
                            CDC_print("USB: Disabling extra port until replug!\r\n");
                    }
                }
            }
        } else {

            gcr_actual -= LED_GCR_STEP_AUTO;
            gcr_min_counter = 0;
        }
    }
}
