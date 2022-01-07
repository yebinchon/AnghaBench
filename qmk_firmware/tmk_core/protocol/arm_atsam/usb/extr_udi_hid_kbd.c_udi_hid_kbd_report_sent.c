
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int udd_ep_status_t ;
typedef int udd_ep_id_t ;
typedef int iram_size_t ;


 int UNUSED (int ) ;
 int udi_hid_kbd_b_report_trans_ongoing ;
 scalar_t__ udi_hid_kbd_b_report_valid ;
 int udi_hid_kbd_send_report () ;

__attribute__((used)) static void udi_hid_kbd_report_sent(udd_ep_status_t status, iram_size_t nb_sent, udd_ep_id_t ep) {
    UNUSED(status);
    UNUSED(nb_sent);
    UNUSED(ep);
    udi_hid_kbd_b_report_trans_ongoing = 0;
    if (udi_hid_kbd_b_report_valid) {
        udi_hid_kbd_send_report();
    }
}
