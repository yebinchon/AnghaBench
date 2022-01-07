
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct usbip_vhci_driver {int dummy; } ;
struct usbip_imported_device {int dummy; } ;
struct udev_device {int dummy; } ;
struct TYPE_4__ {int nports; int ncontrollers; struct udev_device* hc_device; } ;


 int USBIP_VHCI_BUS_TYPE ;
 int USBIP_VHCI_DEVICE_NAME ;
 TYPE_1__* calloc (int,int) ;
 int dbg (char*,int) ;
 int err (char*) ;
 int free (TYPE_1__*) ;
 int get_ncontrollers () ;
 int get_nports (struct udev_device*) ;
 scalar_t__ refresh_imported_device_list () ;
 int udev_context ;
 struct udev_device* udev_device_new_from_subsystem_sysname (int ,int ,int ) ;
 int udev_device_unref (struct udev_device*) ;
 int udev_new () ;
 int udev_unref (int ) ;
 TYPE_1__* vhci_driver ;

int usbip_vhci_driver_open(void)
{
 int nports;
 struct udev_device *hc_device;

 udev_context = udev_new();
 if (!udev_context) {
  err("udev_new failed");
  return -1;
 }


 hc_device =
  udev_device_new_from_subsystem_sysname(udev_context,
             USBIP_VHCI_BUS_TYPE,
             USBIP_VHCI_DEVICE_NAME);
 if (!hc_device) {
  err("udev_device_new_from_subsystem_sysname failed");
  goto err;
 }

 nports = get_nports(hc_device);
 if (nports <= 0) {
  err("no available ports");
  goto err;
 }
 dbg("available ports: %d", nports);

 vhci_driver = calloc(1, sizeof(struct usbip_vhci_driver) +
   nports * sizeof(struct usbip_imported_device));
 if (!vhci_driver) {
  err("vhci_driver allocation failed");
  goto err;
 }

 vhci_driver->nports = nports;
 vhci_driver->hc_device = hc_device;
 vhci_driver->ncontrollers = get_ncontrollers();
 dbg("available controllers: %d", vhci_driver->ncontrollers);

 if (vhci_driver->ncontrollers <=0) {
  err("no available usb controllers");
  goto err;
 }

 if (refresh_imported_device_list())
  goto err;

 return 0;

err:
 udev_device_unref(hc_device);

 if (vhci_driver)
  free(vhci_driver);

 vhci_driver = ((void*)0);

 udev_unref(udev_context);

 return -1;
}
