
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_8__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint8_t ;
struct nkro_report {int dummy; } ;
struct TYPE_13__ {int mods; } ;
typedef TYPE_3__ report_keyboard_t ;
struct TYPE_15__ {scalar_t__ nkro; } ;
struct TYPE_14__ {TYPE_2__** epc; } ;
struct TYPE_12__ {TYPE_1__* in_state; } ;
struct TYPE_11__ {int thread; } ;


 size_t KEYBOARD_IN_EPNUM ;
 int KEYBOARD_REPORT_SIZE ;
 size_t SHARED_IN_EPNUM ;
 scalar_t__ USB_ACTIVE ;
 TYPE_4__ USB_DRIVER ;
 scalar_t__ keyboard_protocol ;
 TYPE_3__ keyboard_report_sent ;
 TYPE_8__ keymap_config ;
 int osalSysLock () ;
 int osalSysUnlock () ;
 int osalThreadSuspendS (int *) ;
 scalar_t__ usbGetDriverStateI (TYPE_4__*) ;
 scalar_t__ usbGetTransmitStatusI (TYPE_4__*,size_t) ;
 int usbStartTransmitI (TYPE_4__*,size_t,int*,int) ;

void send_keyboard(report_keyboard_t *report) {
    osalSysLock();
    if (usbGetDriverStateI(&USB_DRIVER) != USB_ACTIVE) {
        osalSysUnlock();
        return;
    }
    osalSysUnlock();
    {


        osalSysLock();
        if (usbGetTransmitStatusI(&USB_DRIVER, KEYBOARD_IN_EPNUM)) {




            osalThreadSuspendS(&(&USB_DRIVER)->epc[KEYBOARD_IN_EPNUM]->in_state->thread);
        }
        uint8_t *data, size;
        if (keyboard_protocol) {
            data = (uint8_t *)report;
            size = KEYBOARD_REPORT_SIZE;
        } else {
            data = &report->mods;
            size = 8;
        }
        usbStartTransmitI(&USB_DRIVER, KEYBOARD_IN_EPNUM, data, size);
        osalSysUnlock();
    }
    keyboard_report_sent = *report;
}
