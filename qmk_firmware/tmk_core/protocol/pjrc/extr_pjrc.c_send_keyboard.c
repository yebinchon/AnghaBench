
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int report_keyboard_t ;


 int usb_keyboard_send_report (int *) ;

__attribute__((used)) static void send_keyboard(report_keyboard_t *report) { usb_keyboard_send_report(report); }
