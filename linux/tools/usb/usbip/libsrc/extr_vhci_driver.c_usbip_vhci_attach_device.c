
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int get_devid (int ,int ) ;
 int usbip_vhci_attach_device2 (int ,int,int,int ) ;

int usbip_vhci_attach_device(uint8_t port, int sockfd, uint8_t busnum,
  uint8_t devnum, uint32_t speed)
{
 int devid = get_devid(busnum, devnum);

 return usbip_vhci_attach_device2(port, sockfd, devid, speed);
}
