
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_config {int run_in_standby; int speed_mode; scalar_t__ source_generator; scalar_t__ select_host_mode; } ;


 int Assert (struct usb_config*) ;
 int USB_SPEED_FULL ;

void usb_get_config_defaults(struct usb_config *module_config) {
    Assert(module_config);


    Assert(module_config);

    module_config->select_host_mode = 0;
    module_config->run_in_standby = 1;
    module_config->source_generator = 0;
    module_config->speed_mode = USB_SPEED_FULL;
}
