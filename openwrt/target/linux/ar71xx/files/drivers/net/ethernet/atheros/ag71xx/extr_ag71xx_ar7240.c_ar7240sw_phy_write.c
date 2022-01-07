
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
typedef unsigned int u16 ;
struct mii_bus {int dummy; } ;


 unsigned int AR7240_MDIO_CTRL_BUSY ;
 unsigned int AR7240_MDIO_CTRL_CMD_WRITE ;
 unsigned int AR7240_MDIO_CTRL_MASTER_EN ;
 unsigned int AR7240_MDIO_CTRL_PHY_ADDR_S ;
 unsigned int AR7240_MDIO_CTRL_REG_ADDR_S ;
 unsigned int AR7240_NUM_PHYS ;
 int AR7240_REG_MDIO_CTRL ;
 int EINVAL ;
 int __ar7240sw_reg_wait (struct mii_bus*,int ,unsigned int,int ,int) ;
 int __ar7240sw_reg_write (struct mii_bus*,int ,unsigned int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int reg_mutex ;

int ar7240sw_phy_write(struct mii_bus *mii, unsigned phy_addr,
         unsigned reg_addr, u16 reg_val)
{
 u32 t;
 int ret;

 if (phy_addr >= AR7240_NUM_PHYS)
  return -EINVAL;

 mutex_lock(&reg_mutex);
 t = (phy_addr << AR7240_MDIO_CTRL_PHY_ADDR_S) |
     (reg_addr << AR7240_MDIO_CTRL_REG_ADDR_S) |
     AR7240_MDIO_CTRL_MASTER_EN |
     AR7240_MDIO_CTRL_BUSY |
     AR7240_MDIO_CTRL_CMD_WRITE |
     reg_val;

 __ar7240sw_reg_write(mii, AR7240_REG_MDIO_CTRL, t);
 ret = __ar7240sw_reg_wait(mii, AR7240_REG_MDIO_CTRL,
      AR7240_MDIO_CTRL_BUSY, 0, 5);
 mutex_unlock(&reg_mutex);

 return ret;
}
