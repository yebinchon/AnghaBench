
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int unbind_attr_path ;
struct udev_device {int dummy; } ;
struct udev {int dummy; } ;
typedef enum unbind_status { ____Placeholder_unbind_status } unbind_status ;


 char* SYSFS_BUS_NAME ;
 char* SYSFS_BUS_TYPE ;
 char* SYSFS_DRIVERS_NAME ;
 char* SYSFS_MNT_PATH ;
 int SYSFS_PATH_MAX ;
 int UNBIND_ST_FAILED ;
 int UNBIND_ST_OK ;
 int UNBIND_ST_USBIP_HOST ;
 char* USBIP_HOST_DRV_NAME ;
 int dbg (char*,...) ;
 int err (char*,char*) ;
 int snprintf (char*,int,char*,char*,char*,char*,char*,char const*,char*) ;
 int strlen (char const*) ;
 int strncmp (char const*,char const*,int ) ;
 char* udev_device_get_driver (struct udev_device*) ;
 char* udev_device_get_sysattr_value (struct udev_device*,char*) ;
 struct udev_device* udev_device_new_from_subsystem_sysname (struct udev*,char*,char*) ;
 int udev_device_unref (struct udev_device*) ;
 struct udev* udev_new () ;
 int udev_unref (struct udev*) ;
 int write_sysfs_attribute (char*,char*,int ) ;

__attribute__((used)) static int unbind_other(char *busid)
{
 enum unbind_status status = UNBIND_ST_OK;

 char attr_name[] = "unbind";
 char unbind_attr_path[SYSFS_PATH_MAX];
 int rc = -1;

 struct udev *udev;
 struct udev_device *dev;
 const char *driver;
 const char *bDevClass;


 udev = udev_new();


 dev = udev_device_new_from_subsystem_sysname(udev, "usb", busid);
 if (!dev) {
  dbg("unable to find device with bus ID %s", busid);
  goto err_close_busid_dev;
 }


 bDevClass = udev_device_get_sysattr_value(dev, "bDeviceClass");
 if (!bDevClass) {
  dbg("unable to get bDevClass device attribute");
  goto err_close_busid_dev;
 }

 if (!strncmp(bDevClass, "09", strlen(bDevClass))) {
  dbg("skip unbinding of hub");
  goto err_close_busid_dev;
 }


 driver = udev_device_get_driver(dev);
 if (!driver) {

  goto out;
 }

 if (!strncmp(USBIP_HOST_DRV_NAME, driver,
    strlen(USBIP_HOST_DRV_NAME))) {

  status = UNBIND_ST_USBIP_HOST;
  goto out;
 }


 snprintf(unbind_attr_path, sizeof(unbind_attr_path), "%s/%s/%s/%s/%s/%s",
   SYSFS_MNT_PATH, SYSFS_BUS_NAME, SYSFS_BUS_TYPE,
   SYSFS_DRIVERS_NAME, driver, attr_name);

 rc = write_sysfs_attribute(unbind_attr_path, busid, strlen(busid));
 if (rc < 0) {
  err("error unbinding device %s from driver", busid);
  goto err_close_busid_dev;
 }

 goto out;

err_close_busid_dev:
 status = UNBIND_ST_FAILED;
out:
 udev_device_unref(dev);
 udev_unref(udev);

 return status;
}
