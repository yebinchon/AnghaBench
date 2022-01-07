
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device_endpoint_config {int auto_zlp; int ep_type; int ep_size; scalar_t__ ep_address; } ;


 int Assert (struct usb_device_endpoint_config*) ;
 int USB_DEVICE_ENDPOINT_TYPE_CONTROL ;
 int USB_ENDPOINT_8_BYTE ;

void usb_device_endpoint_get_config_defaults(struct usb_device_endpoint_config *ep_config) {

    Assert(ep_config);


    ep_config->ep_address = 0;
    ep_config->ep_size = USB_ENDPOINT_8_BYTE;
    ep_config->auto_zlp = 0;
    ep_config->ep_type = USB_DEVICE_ENDPOINT_TYPE_CONTROL;
}
