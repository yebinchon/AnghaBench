
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u16 ;
struct gsw_mt753x {int phy_base; TYPE_1__* host_bus; } ;
struct TYPE_5__ {int mdio_lock; int (* write ) (TYPE_1__*,int,int ,int) ;} ;


 int MII_MMD_ACC_CTL_REG ;
 int MII_MMD_ADDR_DATA_REG ;
 int MMD_ADDR ;
 int MMD_CMD_S ;
 int MMD_DATA ;
 int MMD_DEVAD_M ;
 int MMD_DEVAD_S ;
 int MT753X_NUM_PHYS ;
 int MT753X_SMI_ADDR_MASK ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (TYPE_1__*,int,int ,int) ;
 int stub2 (TYPE_1__*,int,int ,int) ;
 int stub3 (TYPE_1__*,int,int ,int) ;
 int stub4 (TYPE_1__*,int,int ,int) ;

__attribute__((used)) static void mt7530_mmd_write(struct gsw_mt753x *gsw, int addr, int devad,
        u16 reg, u16 val)
{
 if (addr < MT753X_NUM_PHYS)
  addr = (gsw->phy_base + addr) & MT753X_SMI_ADDR_MASK;

 mutex_lock(&gsw->host_bus->mdio_lock);

 gsw->host_bus->write(gsw->host_bus, addr, MII_MMD_ACC_CTL_REG,
        (MMD_ADDR << MMD_CMD_S) |
        ((devad << MMD_DEVAD_S) & MMD_DEVAD_M));

 gsw->host_bus->write(gsw->host_bus, addr, MII_MMD_ADDR_DATA_REG, reg);

 gsw->host_bus->write(gsw->host_bus, addr, MII_MMD_ACC_CTL_REG,
        (MMD_DATA << MMD_CMD_S) |
        ((devad << MMD_DEVAD_S) & MMD_DEVAD_M));

 gsw->host_bus->write(gsw->host_bus, addr, MII_MMD_ADDR_DATA_REG, val);

 mutex_unlock(&gsw->host_bus->mdio_lock);
}
