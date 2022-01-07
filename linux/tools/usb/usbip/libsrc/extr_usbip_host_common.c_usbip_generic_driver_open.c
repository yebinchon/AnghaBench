
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbip_host_driver {int dummy; } ;


 int err (char*) ;
 int refresh_exported_devices (struct usbip_host_driver*) ;
 int udev_context ;
 int udev_new () ;
 int udev_unref (int ) ;

int usbip_generic_driver_open(struct usbip_host_driver *hdriver)
{
 int rc;

 udev_context = udev_new();
 if (!udev_context) {
  err("udev_new failed");
  return -1;
 }

 rc = refresh_exported_devices(hdriver);
 if (rc < 0)
  goto err;
 return 0;
err:
 udev_unref(udev_context);
 return -1;
}
