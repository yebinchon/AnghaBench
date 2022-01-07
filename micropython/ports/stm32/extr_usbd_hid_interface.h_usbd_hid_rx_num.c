
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ report_in_len; } ;
typedef TYPE_1__ usbd_hid_itf_t ;


 scalar_t__ USBD_HID_REPORT_INVALID ;

__attribute__((used)) static inline int usbd_hid_rx_num(usbd_hid_itf_t *hid) {
    return hid->report_in_len != USBD_HID_REPORT_INVALID;
}
