
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int nports; TYPE_1__* idev; } ;
struct TYPE_3__ {scalar_t__ status; int port; int hub; } ;


 int HUB_SPEED_HIGH ;
 int HUB_SPEED_SUPER ;

 scalar_t__ VDEV_ST_NULL ;
 TYPE_2__* vhci_driver ;

int usbip_vhci_get_free_port(uint32_t speed)
{
 for (int i = 0; i < vhci_driver->nports; i++) {

  switch (speed) {
  case 128:
   if (vhci_driver->idev[i].hub != HUB_SPEED_SUPER)
    continue;
  break;
  default:
   if (vhci_driver->idev[i].hub != HUB_SPEED_HIGH)
    continue;
  break;
  }

  if (vhci_driver->idev[i].status == VDEV_ST_NULL)
   return vhci_driver->idev[i].port;
 }

 return -1;
}
