
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int usb_device ;
 int usb_device_set_address (int *,int ) ;

void udd_set_address(uint8_t address) { usb_device_set_address(&usb_device, address); }
