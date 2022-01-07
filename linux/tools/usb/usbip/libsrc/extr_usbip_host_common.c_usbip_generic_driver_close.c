
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbip_host_driver {int edev_list; } ;


 int udev_context ;
 int udev_unref (int ) ;
 int usbip_exported_device_destroy (int *) ;

void usbip_generic_driver_close(struct usbip_host_driver *hdriver)
{
 if (!hdriver)
  return;

 usbip_exported_device_destroy(&hdriver->edev_list);

 udev_unref(udev_context);
}
