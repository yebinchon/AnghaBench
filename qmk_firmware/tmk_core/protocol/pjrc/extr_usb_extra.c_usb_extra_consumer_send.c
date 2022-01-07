
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int int8_t ;


 int REPORT_ID_CONSUMER ;
 int usb_extra_send (int ,int ) ;

int8_t usb_extra_consumer_send(uint16_t bits) { return usb_extra_send(REPORT_ID_CONSUMER, bits); }
