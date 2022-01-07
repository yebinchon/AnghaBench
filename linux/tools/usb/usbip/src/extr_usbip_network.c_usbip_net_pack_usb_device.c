
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbip_usb_device {int bcdDevice; int idProduct; int idVendor; int speed; int devnum; int busnum; } ;


 int usbip_net_pack_uint16_t (int,int *) ;
 int usbip_net_pack_uint32_t (int,int *) ;

void usbip_net_pack_usb_device(int pack, struct usbip_usb_device *udev)
{
 usbip_net_pack_uint32_t(pack, &udev->busnum);
 usbip_net_pack_uint32_t(pack, &udev->devnum);
 usbip_net_pack_uint32_t(pack, &udev->speed);

 usbip_net_pack_uint16_t(pack, &udev->idVendor);
 usbip_net_pack_uint16_t(pack, &udev->idProduct);
 usbip_net_pack_uint16_t(pack, &udev->bcdDevice);
}
