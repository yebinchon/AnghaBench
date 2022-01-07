
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int suspend ;
 scalar_t__ usb_configuration ;

uint8_t usb_configured(void) { return usb_configuration && !suspend; }
