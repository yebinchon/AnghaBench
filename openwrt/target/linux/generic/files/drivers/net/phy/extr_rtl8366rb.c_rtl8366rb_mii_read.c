
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtl8366_smi {int dummy; } ;
struct mii_bus {struct rtl8366_smi* priv; } ;


 int rtl8366rb_read_phy_reg (struct rtl8366_smi*,int,int ,int,int*) ;

__attribute__((used)) static int rtl8366rb_mii_read(struct mii_bus *bus, int addr, int reg)
{
 struct rtl8366_smi *smi = bus->priv;
 u32 val = 0;
 int err;

 err = rtl8366rb_read_phy_reg(smi, addr, 0, reg, &val);
 if (err)
  return 0xffff;

 return val;
}
