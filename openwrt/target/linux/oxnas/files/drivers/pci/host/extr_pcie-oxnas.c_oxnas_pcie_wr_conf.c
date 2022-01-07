
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_bus {int number; int sysdata; } ;
struct oxnas_pcie {int lock; scalar_t__ cfgbase; int haslink; } ;


 int PCIBIOS_DEVICE_NOT_FOUND ;
 int PCIBIOS_SUCCESSFUL ;
 scalar_t__ PCI_SLOT (int) ;
 unsigned int oxnas_pcie_cfg_to_offset (int ,int ,int,int) ;
 int set_out_lanes (struct oxnas_pcie*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct oxnas_pcie* sys_to_pcie (int ) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static int oxnas_pcie_wr_conf(struct pci_bus *bus, u32 devfn,
         int where, int size, u32 val)
{
 unsigned long flags;
 struct oxnas_pcie *pcie = sys_to_pcie(bus->sysdata);
 unsigned offset;
 u32 value;
 u32 lanes;


 if (PCI_SLOT(devfn) > 0)
  return PCIBIOS_DEVICE_NOT_FOUND;

 if (!pcie->haslink)
  return PCIBIOS_DEVICE_NOT_FOUND;

 offset = oxnas_pcie_cfg_to_offset(bus->sysdata, bus->number, devfn,
       where);

 value = val << (8 * (where & 3));
 lanes = (0xf >> (4-size)) << (where & 3);





 spin_lock_irqsave(&pcie->lock, flags);
 set_out_lanes(pcie, lanes);
 writel_relaxed(value, pcie->cfgbase + offset);
 set_out_lanes(pcie, 0xf);
 spin_unlock_irqrestore(&pcie->lock, flags);

 return PCIBIOS_SUCCESSFUL;
}
