
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef scalar_t__ uint64_t ;
struct TYPE_4__ {scalar_t__ reg; } ;
struct TYPE_5__ {TYPE_1__ FSMSTATUS; } ;
struct TYPE_6__ {TYPE_2__ DEVICE; } ;


 TYPE_3__* USB ;
 scalar_t__ USB_FSMSTATUS_FSMSTATE_ON_Val ;
 scalar_t__ USB_FSMSTATUS_FSMSTATE_SLEEP_Val ;
 scalar_t__ USB_FSMSTATUS_FSMSTATE_SUSPEND_Val ;
 scalar_t__ g_usb_state ;
 int suspend_power_down () ;
 int suspend_wakeup_init () ;
 scalar_t__ timer_read64 () ;

void main_subtask_usb_state(void) {
    static uint64_t fsmstate_on_delay = 0;
    uint8_t fsmstate_now = USB->DEVICE.FSMSTATUS.reg;

    if (fsmstate_now == USB_FSMSTATUS_FSMSTATE_SUSPEND_Val)
    {
        fsmstate_on_delay = 0;

        if (g_usb_state != USB_FSMSTATUS_FSMSTATE_SUSPEND_Val)
        {
            suspend_power_down();
            g_usb_state = fsmstate_now;
        }
    } else if (fsmstate_now == USB_FSMSTATUS_FSMSTATE_SLEEP_Val)
    {
        fsmstate_on_delay = 0;

        if (g_usb_state != USB_FSMSTATUS_FSMSTATE_SLEEP_Val)
        {
            suspend_power_down();
            g_usb_state = fsmstate_now;
        }
    } else if (fsmstate_now == USB_FSMSTATUS_FSMSTATE_ON_Val)
    {
        if (g_usb_state != USB_FSMSTATUS_FSMSTATE_ON_Val)
        {
            if (fsmstate_on_delay == 0)
            {
                fsmstate_on_delay = timer_read64() + 250;
            } else if (timer_read64() > fsmstate_on_delay)
            {
                suspend_wakeup_init();
                g_usb_state = fsmstate_now;
            }
        }
    } else
    {
        fsmstate_on_delay = 0;
    }
}
