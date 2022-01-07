
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int report_mouse_t ;


 int UDI_HID_MOU_REPORT_SIZE ;
 int __DMB () ;
 int __disable_irq () ;
 int __get_PRIMASK () ;
 int __set_PRIMASK (int ) ;
 int memcpy (int ,int *,int ) ;
 int udi_hid_mou_b_report_valid ;
 int udi_hid_mou_report ;
 int udi_hid_mou_send_report () ;

void send_mouse(report_mouse_t *report) {
}
