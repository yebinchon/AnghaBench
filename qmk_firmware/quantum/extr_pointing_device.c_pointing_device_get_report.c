
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int report_mouse_t ;


 int mouseReport ;

report_mouse_t pointing_device_get_report(void) { return mouseReport; }
