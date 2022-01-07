
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int report; int report_id; } ;
typedef TYPE_1__ vusb_mouse_report_t ;
typedef int report_mouse_t ;


 int REPORT_ID_MOUSE ;
 scalar_t__ usbInterruptIsReady3 () ;
 int usbSetInterrupt3 (void*,int) ;

__attribute__((used)) static void send_mouse(report_mouse_t *report) {
    vusb_mouse_report_t r = {.report_id = REPORT_ID_MOUSE, .report = *report};
    if (usbInterruptIsReady3()) {
        usbSetInterrupt3((void *)&r, sizeof(vusb_mouse_report_t));
    }
}
