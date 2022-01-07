
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtl8366_smi {scalar_t__ ext_mbus; } ;


 int __rtl8366_mdio_write_reg (struct rtl8366_smi*,int ,int ) ;
 int __rtl8366_smi_write_reg (struct rtl8366_smi*,int ,int ,int) ;

int rtl8366_smi_write_reg(struct rtl8366_smi *smi, u32 addr, u32 data)
{
 if (smi->ext_mbus)
  return __rtl8366_mdio_write_reg(smi, addr, data);
 else
  return __rtl8366_smi_write_reg(smi, addr, data, 1);
}
