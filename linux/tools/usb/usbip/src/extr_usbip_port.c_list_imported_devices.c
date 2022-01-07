
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usbip_imported_device {int dummy; } ;
struct TYPE_2__ {int nports; struct usbip_imported_device* idev; } ;


 int USBIDS_FILE ;
 int err (char*,...) ;
 int printf (char*) ;
 int usbip_names_free () ;
 scalar_t__ usbip_names_init (int ) ;
 int usbip_vhci_driver_close () ;
 int usbip_vhci_driver_open () ;
 scalar_t__ usbip_vhci_imported_device_dump (struct usbip_imported_device*) ;
 TYPE_1__* vhci_driver ;

__attribute__((used)) static int list_imported_devices(void)
{
 int i;
 struct usbip_imported_device *idev;
 int ret;

 if (usbip_names_init(USBIDS_FILE))
  err("failed to open %s", USBIDS_FILE);

 ret = usbip_vhci_driver_open();
 if (ret < 0) {
  err("open vhci_driver");
  goto err_names_free;
 }

 printf("Imported USB devices\n");
 printf("====================\n");

 for (i = 0; i < vhci_driver->nports; i++) {
  idev = &vhci_driver->idev[i];

  if (usbip_vhci_imported_device_dump(idev) < 0)
   goto err_driver_close;
 }

 usbip_vhci_driver_close();
 usbip_names_free();

 return ret;

err_driver_close:
 usbip_vhci_driver_close();
err_names_free:
 usbip_names_free();
 return -1;
}
