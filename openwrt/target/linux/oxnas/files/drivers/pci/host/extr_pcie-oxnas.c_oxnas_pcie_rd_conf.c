
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_bus {int number; int sysdata; } ;
struct oxnas_pcie {scalar_t__ cfgbase; int haslink; } ;


 int PCIBIOS_DEVICE_NOT_FOUND ;
 int PCIBIOS_SUCCESSFUL ;
 scalar_t__ PCI_SLOT (int) ;
 unsigned int oxnas_pcie_cfg_to_offset (int ,int ,int,int) ;
 int readl_relaxed (scalar_t__) ;
 struct oxnas_pcie* sys_to_pcie (int ) ;

__attribute__((used)) static int oxnas_pcie_rd_conf(struct pci_bus *bus, u32 devfn, int where,
         int size, u32 *val)
{
 struct oxnas_pcie *pcie = sys_to_pcie(bus->sysdata);
 unsigned offset;
 u32 value;
 u32 left_bytes, right_bytes;


 if (PCI_SLOT(devfn) > 0) {
  *val = 0xffffffff;
  return PCIBIOS_DEVICE_NOT_FOUND;
 }

 if (!pcie->haslink) {
  *val = 0xffffffff;
  return PCIBIOS_DEVICE_NOT_FOUND;
 }

 offset = oxnas_pcie_cfg_to_offset(bus->sysdata, bus->number, devfn,
       where);
 value = readl_relaxed(pcie->cfgbase + offset);
 left_bytes = where & 3;
 right_bytes = 4 - left_bytes - size;
 value <<= right_bytes * 8;
 value >>= (left_bytes + right_bytes) * 8;
 *val = value;

 return PCIBIOS_SUCCESSFUL;
}
