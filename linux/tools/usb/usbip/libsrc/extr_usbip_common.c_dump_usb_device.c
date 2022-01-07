
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbip_usb_device {char* path; char* busid; int speed; int idProduct; int idVendor; int bDeviceProtocol; int bDeviceSubClass; int bDeviceClass; } ;
typedef int buff ;


 int DBG_UDEV_INTEGER (int ) ;
 int bNumConfigurations ;
 int bNumInterfaces ;
 int bcdDevice ;
 int busnum ;
 int dbg (char*,char*,char*) ;
 int devnum ;
 int usbip_names_get_class (char*,int,int ,int ,int ) ;
 int usbip_names_get_product (char*,int,int ,int ) ;
 char* usbip_speed_string (int ) ;

void dump_usb_device(struct usbip_usb_device *udev)
{
 char buff[100];

 dbg("%-20s = %s", "path", udev->path);
 dbg("%-20s = %s", "busid", udev->busid);

 usbip_names_get_class(buff, sizeof(buff),
   udev->bDeviceClass,
   udev->bDeviceSubClass,
   udev->bDeviceProtocol);
 dbg("%-20s = %s", "Device(C/SC/P)", buff);

 DBG_UDEV_INTEGER(bcdDevice);

 usbip_names_get_product(buff, sizeof(buff),
   udev->idVendor,
   udev->idProduct);
 dbg("%-20s = %s", "Vendor/Product", buff);

 DBG_UDEV_INTEGER(bNumConfigurations);
 DBG_UDEV_INTEGER(bNumInterfaces);

 dbg("%-20s = %s", "speed",
   usbip_speed_string(udev->speed));

 DBG_UDEV_INTEGER(busnum);
 DBG_UDEV_INTEGER(devnum);
}
