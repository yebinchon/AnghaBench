
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int usb_device ;
 int usb_device_get_micro_frame_number (int *) ;

uint16_t udd_get_micro_frame_number(void) { return usb_device_get_micro_frame_number(&usb_device); }
