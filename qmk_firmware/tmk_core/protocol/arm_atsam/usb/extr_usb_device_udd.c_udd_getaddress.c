
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int usb_device ;
 int usb_device_get_address (int *) ;

uint8_t udd_getaddress(void) { return usb_device_get_address(&usb_device); }
