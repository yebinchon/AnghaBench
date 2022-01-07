
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_sys_data {unsigned char busnr; } ;


 unsigned int PCI_FUNC (unsigned int) ;
 unsigned int PCI_SLOT (unsigned int) ;

__attribute__((used)) static unsigned oxnas_pcie_cfg_to_offset(
 struct pci_sys_data *sys,
 unsigned char bus_number,
 unsigned int devfn,
 int where)
{
 unsigned int function = PCI_FUNC(devfn);
 unsigned int slot = PCI_SLOT(devfn);
 unsigned char bus_number_offset;

 bus_number_offset = bus_number - sys->busnr;
 return (bus_number_offset << 20) | (slot << 15) | (function << 12) |
  (where & ~3);
}
