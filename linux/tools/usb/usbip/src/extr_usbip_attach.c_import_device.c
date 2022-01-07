
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct usbip_usb_device {int speed; int devnum; int busnum; } ;


 scalar_t__ EBUSY ;
 int dbg (char*,int) ;
 int err (char*) ;
 scalar_t__ errno ;
 int usbip_vhci_attach_device (int,int,int ,int ,int ) ;
 int usbip_vhci_driver_close () ;
 int usbip_vhci_driver_open () ;
 int usbip_vhci_get_free_port (int ) ;

__attribute__((used)) static int import_device(int sockfd, struct usbip_usb_device *udev)
{
 int rc;
 int port;
 uint32_t speed = udev->speed;

 rc = usbip_vhci_driver_open();
 if (rc < 0) {
  err("open vhci_driver");
  goto err_out;
 }

 do {
  port = usbip_vhci_get_free_port(speed);
  if (port < 0) {
   err("no free port");
   goto err_driver_close;
  }

  dbg("got free port %d", port);

  rc = usbip_vhci_attach_device(port, sockfd, udev->busnum,
           udev->devnum, udev->speed);
  if (rc < 0 && errno != EBUSY) {
   err("import device");
   goto err_driver_close;
  }
 } while (rc < 0);

 usbip_vhci_driver_close();

 return port;

err_driver_close:
 usbip_vhci_driver_close();
err_out:
 return -1;
}
