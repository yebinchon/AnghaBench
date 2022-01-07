
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int usbd_desc_device ;

const uint8_t *tud_descriptor_device_cb(void) {
    return (const uint8_t*)&usbd_desc_device;
}
