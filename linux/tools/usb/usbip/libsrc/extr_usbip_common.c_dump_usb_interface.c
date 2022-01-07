
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbip_usb_interface {int bInterfaceProtocol; int bInterfaceSubClass; int bInterfaceClass; } ;
typedef int buff ;


 int dbg (char*,char*,char*) ;
 int usbip_names_get_class (char*,int,int ,int ,int ) ;

void dump_usb_interface(struct usbip_usb_interface *uinf)
{
 char buff[100];

 usbip_names_get_class(buff, sizeof(buff),
   uinf->bInterfaceClass,
   uinf->bInterfaceSubClass,
   uinf->bInterfaceProtocol);
 dbg("%-20s = %s", "Interface(C/SC/P)", buff);
}
