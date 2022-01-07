
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int wValue; int wLength; } ;
struct TYPE_4__ {int payload_size; int callback; int * payload; TYPE_1__ req; } ;


 int USB_HID_REPORT_TYPE_OUTPUT ;
 TYPE_2__ udd_g_ctrlreq ;
 int udi_hid_kbd_report_set ;
 int udi_hid_kbd_setreport_valid ;

__attribute__((used)) static bool udi_hid_kbd_setreport(void) {
    if ((USB_HID_REPORT_TYPE_OUTPUT == (udd_g_ctrlreq.req.wValue >> 8)) && (0 == (0xFF & udd_g_ctrlreq.req.wValue)) && (1 == udd_g_ctrlreq.req.wLength)) {

        udd_g_ctrlreq.payload = &udi_hid_kbd_report_set;
        udd_g_ctrlreq.callback = udi_hid_kbd_setreport_valid;
        udd_g_ctrlreq.payload_size = 1;
        return 1;
    }
    return 0;
}
