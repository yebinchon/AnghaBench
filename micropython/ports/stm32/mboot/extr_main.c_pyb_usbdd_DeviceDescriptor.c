
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
typedef int USBD_HandleTypeDef ;


 int USB_LEN_DEV_DESC ;
 scalar_t__ dev_descr ;

__attribute__((used)) static uint8_t *pyb_usbdd_DeviceDescriptor(USBD_HandleTypeDef *pdev, uint16_t *length) {
    *length = USB_LEN_DEV_DESC;
    return (uint8_t*)dev_descr;
}
