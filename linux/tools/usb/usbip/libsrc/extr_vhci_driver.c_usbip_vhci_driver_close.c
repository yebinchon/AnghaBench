
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int hc_device; } ;


 int free (TYPE_1__*) ;
 int udev_context ;
 int udev_device_unref (int ) ;
 int udev_unref (int ) ;
 TYPE_1__* vhci_driver ;

void usbip_vhci_driver_close(void)
{
 if (!vhci_driver)
  return;

 udev_device_unref(vhci_driver->hc_device);

 free(vhci_driver);

 vhci_driver = ((void*)0);

 udev_unref(udev_context);
}
