
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct rtl8366_smi {int parent; } ;


 int EINVAL ;
 int ETIMEDOUT ;
 int REG_RD (struct rtl8366_smi*,int ,scalar_t__*) ;
 int REG_WR (struct rtl8366_smi*,int ,int) ;
 int RTL8367B_IA_ADDRESS_REG ;
 int RTL8367B_IA_CTRL_CMD_MASK ;
 int RTL8367B_IA_CTRL_REG ;
 int RTL8367B_IA_CTRL_RW_READ ;
 int RTL8367B_IA_READ_DATA_REG ;
 scalar_t__ RTL8367B_IA_STATUS_PHY_BUSY ;
 int RTL8367B_IA_STATUS_REG ;
 int RTL8367B_INTERNAL_PHY_REG (scalar_t__,scalar_t__) ;
 scalar_t__ RTL8367B_PHY_ADDR_MAX ;
 scalar_t__ RTL8367B_PHY_REG_MAX ;
 int dev_dbg (int ,char*,scalar_t__,scalar_t__,scalar_t__) ;
 int dev_err (int ,char*) ;
 int udelay (int) ;

__attribute__((used)) static int rtl8367b_read_phy_reg(struct rtl8366_smi *smi,
    u32 phy_addr, u32 phy_reg, u32 *val)
{
 int timeout;
 u32 data;
 int err;

 if (phy_addr > RTL8367B_PHY_ADDR_MAX)
  return -EINVAL;

 if (phy_reg > RTL8367B_PHY_REG_MAX)
  return -EINVAL;

 REG_RD(smi, RTL8367B_IA_STATUS_REG, &data);
 if (data & RTL8367B_IA_STATUS_PHY_BUSY)
  return -ETIMEDOUT;


 REG_WR(smi, RTL8367B_IA_ADDRESS_REG,
        RTL8367B_INTERNAL_PHY_REG(phy_addr, phy_reg));


 REG_WR(smi, RTL8367B_IA_CTRL_REG,
        RTL8367B_IA_CTRL_CMD_MASK | RTL8367B_IA_CTRL_RW_READ);

 timeout = 5;
 do {
  REG_RD(smi, RTL8367B_IA_STATUS_REG, &data);
  if ((data & RTL8367B_IA_STATUS_PHY_BUSY) == 0)
   break;

  if (timeout--) {
   dev_err(smi->parent, "phy read timed out\n");
   return -ETIMEDOUT;
  }

  udelay(1);
 } while (1);


 REG_RD(smi, RTL8367B_IA_READ_DATA_REG, val);

 dev_dbg(smi->parent, "phy_read: addr:%02x, reg:%02x, val:%04x\n",
  phy_addr, phy_reg, *val);
 return 0;
}
