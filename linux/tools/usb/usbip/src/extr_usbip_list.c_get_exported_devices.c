
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintf ;
typedef int uint16_t ;
typedef int udev ;
struct usbip_usb_interface {unsigned int ndev; char* busid; char* path; int bNumInterfaces; int bInterfaceProtocol; int bInterfaceSubClass; int bInterfaceClass; int bDeviceProtocol; int bDeviceSubClass; int bDeviceClass; int idProduct; int idVendor; } ;
struct usbip_usb_device {unsigned int ndev; char* busid; char* path; int bNumInterfaces; int bInterfaceProtocol; int bInterfaceSubClass; int bInterfaceClass; int bDeviceProtocol; int bDeviceSubClass; int bDeviceClass; int idProduct; int idVendor; } ;
struct op_devlist_reply {unsigned int ndev; char* busid; char* path; int bNumInterfaces; int bInterfaceProtocol; int bInterfaceSubClass; int bInterfaceClass; int bDeviceProtocol; int bDeviceSubClass; int bDeviceClass; int idProduct; int idVendor; } ;
typedef int reply ;
typedef int product_name ;
typedef int class_name ;


 int OP_REP_DEVLIST ;
 int OP_REQ_DEVLIST ;
 int PACK_OP_DEVLIST_REPLY (int ,struct usbip_usb_interface*) ;
 int dbg (char*,...) ;
 int err (char*,int) ;
 int info (char*,char*) ;
 int memset (struct usbip_usb_interface*,int ,int) ;
 int printf (char*,...) ;
 int usbip_names_get_class (char*,int,int ,int ,int ) ;
 int usbip_names_get_product (char*,int,int ,int ) ;
 int usbip_net_pack_usb_device (int ,struct usbip_usb_interface*) ;
 int usbip_net_pack_usb_interface (int ,struct usbip_usb_interface*) ;
 int usbip_net_recv (int,struct usbip_usb_interface*,int) ;
 int usbip_net_recv_op_common (int,int *,int*) ;
 int usbip_net_send_op_common (int,int ,int ) ;
 int usbip_op_common_status_string (int) ;

__attribute__((used)) static int get_exported_devices(char *host, int sockfd)
{
 char product_name[100];
 char class_name[100];
 struct op_devlist_reply reply;
 uint16_t code = OP_REP_DEVLIST;
 struct usbip_usb_device udev;
 struct usbip_usb_interface uintf;
 unsigned int i;
 int rc, j;
 int status;

 rc = usbip_net_send_op_common(sockfd, OP_REQ_DEVLIST, 0);
 if (rc < 0) {
  dbg("usbip_net_send_op_common failed");
  return -1;
 }

 rc = usbip_net_recv_op_common(sockfd, &code, &status);
 if (rc < 0) {
  err("Exported Device List Request failed - %s\n",
      usbip_op_common_status_string(status));
  return -1;
 }

 memset(&reply, 0, sizeof(reply));
 rc = usbip_net_recv(sockfd, &reply, sizeof(reply));
 if (rc < 0) {
  dbg("usbip_net_recv_op_devlist failed");
  return -1;
 }
 PACK_OP_DEVLIST_REPLY(0, &reply);
 dbg("exportable devices: %d\n", reply.ndev);

 if (reply.ndev == 0) {
  info("no exportable devices found on %s", host);
  return 0;
 }

 printf("Exportable USB devices\n");
 printf("======================\n");
 printf(" - %s\n", host);

 for (i = 0; i < reply.ndev; i++) {
  memset(&udev, 0, sizeof(udev));
  rc = usbip_net_recv(sockfd, &udev, sizeof(udev));
  if (rc < 0) {
   dbg("usbip_net_recv failed: usbip_usb_device[%d]", i);
   return -1;
  }
  usbip_net_pack_usb_device(0, &udev);

  usbip_names_get_product(product_name, sizeof(product_name),
     udev.idVendor, udev.idProduct);
  usbip_names_get_class(class_name, sizeof(class_name),
          udev.bDeviceClass, udev.bDeviceSubClass,
          udev.bDeviceProtocol);
  printf("%11s: %s\n", udev.busid, product_name);
  printf("%11s: %s\n", "", udev.path);
  printf("%11s: %s\n", "", class_name);

  for (j = 0; j < udev.bNumInterfaces; j++) {
   rc = usbip_net_recv(sockfd, &uintf, sizeof(uintf));
   if (rc < 0) {
    err("usbip_net_recv failed: usbip_usb_intf[%d]",
      j);

    return -1;
   }
   usbip_net_pack_usb_interface(0, &uintf);

   usbip_names_get_class(class_name, sizeof(class_name),
     uintf.bInterfaceClass,
     uintf.bInterfaceSubClass,
     uintf.bInterfaceProtocol);
   printf("%11s: %2d - %s\n", "", j, class_name);
  }

  printf("\n");
 }

 return 0;
}
