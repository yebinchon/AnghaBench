
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * platform_data; } ;
struct pci_dev {TYPE_2__ dev; TYPE_1__* bus; } ;
struct TYPE_3__ {int number; } ;


 int pci_main_wifi_data ;
 int pci_scan_wifi_data ;

__attribute__((used)) static int mr18_dual_pci_plat_dev_init(struct pci_dev *dev)
{




 switch (dev->bus->number) {
 case 0:
  dev->dev.platform_data = &pci_main_wifi_data;
  break;
 case 1:
  dev->dev.platform_data = &pci_scan_wifi_data;
  break;
 }

 return 0;
}
