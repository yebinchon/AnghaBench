
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct usbip_usb_interface {int dummy; } ;
struct TYPE_5__ {scalar_t__ (* read_device ) (scalar_t__,TYPE_2__*) ;int (* read_interface ) (TYPE_2__*,int,int *) ;} ;
struct usbip_host_driver {TYPE_1__ ops; } ;
struct TYPE_6__ {int bNumInterfaces; } ;
struct usbip_exported_device {scalar_t__ status; scalar_t__ sudev; int * uinf; TYPE_2__ udev; } ;


 struct usbip_exported_device* calloc (int,int) ;
 int dbg (char*) ;
 int err (char*,char const*) ;
 int free (struct usbip_exported_device*) ;
 scalar_t__ read_attr_usbip_status (TYPE_2__*) ;
 struct usbip_exported_device* realloc (struct usbip_exported_device*,size_t) ;
 scalar_t__ stub1 (scalar_t__,TYPE_2__*) ;
 int stub2 (TYPE_2__*,int,int *) ;
 int udev_context ;
 scalar_t__ udev_device_new_from_syspath (int ,char const*) ;
 int udev_device_unref (scalar_t__) ;

__attribute__((used)) static
struct usbip_exported_device *usbip_exported_device_new(
  struct usbip_host_driver *hdriver, const char *sdevpath)
{
 struct usbip_exported_device *edev = ((void*)0);
 struct usbip_exported_device *edev_old;
 size_t size;
 int i;

 edev = calloc(1, sizeof(struct usbip_exported_device));

 edev->sudev =
  udev_device_new_from_syspath(udev_context, sdevpath);
 if (!edev->sudev) {
  err("udev_device_new_from_syspath: %s", sdevpath);
  goto err;
 }

 if (hdriver->ops.read_device(edev->sudev, &edev->udev) < 0)
  goto err;

 edev->status = read_attr_usbip_status(&edev->udev);
 if (edev->status < 0)
  goto err;


 size = sizeof(struct usbip_exported_device) +
  edev->udev.bNumInterfaces * sizeof(struct usbip_usb_interface);

 edev_old = edev;
 edev = realloc(edev, size);
 if (!edev) {
  edev = edev_old;
  dbg("realloc failed");
  goto err;
 }

 for (i = 0; i < edev->udev.bNumInterfaces; i++) {

  if (!hdriver->ops.read_interface)
   break;
  hdriver->ops.read_interface(&edev->udev, i, &edev->uinf[i]);
 }

 return edev;
err:
 if (edev->sudev)
  udev_device_unref(edev->sudev);
 if (edev)
  free(edev);

 return ((void*)0);
}
