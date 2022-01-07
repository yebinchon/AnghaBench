
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pci_sys_data {int busnr; int resources; int io_offset; int mem_offset; } ;
struct TYPE_5__ {int start; } ;
struct TYPE_6__ {int start; } ;
struct oxnas_pcie {int cfgbase; TYPE_2__ cfg; TYPE_1__* pdev; TYPE_3__ busn; int io; int pre_mem; int non_mem; } ;
struct TYPE_4__ {int dev; } ;


 int ENOMEM ;
 int devm_ioremap (int *,int ,int ) ;
 int oxnas_pcie_setup_hw (struct oxnas_pcie*) ;
 int pci_add_resource (int *,TYPE_3__*) ;
 int pci_add_resource_offset (int *,int *,int ) ;
 int resource_size (TYPE_2__*) ;
 struct oxnas_pcie* sys_to_pcie (struct pci_sys_data*) ;

__attribute__((used)) static int oxnas_pcie_setup(int nr, struct pci_sys_data *sys)
{
 struct oxnas_pcie *pcie = sys_to_pcie(sys);

 pci_add_resource_offset(&sys->resources, &pcie->non_mem, sys->mem_offset);
 pci_add_resource_offset(&sys->resources, &pcie->pre_mem, sys->mem_offset);
 pci_add_resource_offset(&sys->resources, &pcie->io, sys->io_offset);
 pci_add_resource(&sys->resources, &pcie->busn);
 if (sys->busnr == 0) {
  sys->busnr = pcie->busn.start;
 }

 pcie->cfgbase = devm_ioremap(&pcie->pdev->dev, pcie->cfg.start,
         resource_size(&pcie->cfg));
 if (!pcie->cfgbase)
  return -ENOMEM;

 oxnas_pcie_setup_hw(pcie);

 return 1;
}
