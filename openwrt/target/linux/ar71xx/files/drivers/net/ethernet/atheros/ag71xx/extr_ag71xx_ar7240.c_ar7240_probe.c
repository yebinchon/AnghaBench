
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef scalar_t__ u16 ;
struct switch_dev {char* name; int vlans; int * ops; int cpu_port; void* ports; } ;
struct mii_bus {int dev; } ;
struct ar7240sw {int ver; int* vlan_id; int * vlan_table; struct switch_dev swdev; TYPE_1__* swdata; struct mii_bus* mii_bus; } ;
struct ag71xx_platform_data {scalar_t__ phy_if_mode; TYPE_1__* switch_data; } ;
struct ag71xx {int dev; struct mii_bus* mii_bus; } ;
struct TYPE_2__ {scalar_t__ phy4_mii_en; } ;


 int AR7240_MASK_CTRL_VERSION_M ;
 int AR7240_MASK_CTRL_VERSION_S ;
 int AR7240_MAX_VLANS ;
 void* AR7240_NUM_PORTS ;
 scalar_t__ AR7240_PHY_ID1 ;
 scalar_t__ AR7240_PHY_ID2 ;
 int AR7240_PORT_CPU ;
 int AR7240_REG_MASK_CTRL ;
 int AR934X_OPER_MODE0_MAC_GMII_EN ;
 int AR934X_OPER_MODE0_PHY_MII_EN ;
 scalar_t__ AR934X_PHY_ID1 ;
 scalar_t__ AR934X_PHY_ID2 ;
 int AR934X_REG_OPER_MODE0 ;
 int AR934X_REG_OPER_MODE1 ;
 int AR934X_REG_OPER_MODE1_PHY4_MII_EN ;
 int GFP_KERNEL ;
 int MII_PHYSID1 ;
 int MII_PHYSID2 ;
 scalar_t__ PHY_INTERFACE_MODE_GMII ;
 scalar_t__ PHY_INTERFACE_MODE_MII ;
 struct ag71xx_platform_data* ag71xx_get_pdata (struct ag71xx*) ;
 int ar7240_ops ;
 scalar_t__ ar7240sw_phy_read (struct mii_bus*,int ,int ) ;
 int ar7240sw_port_mask_all (struct ar7240sw*) ;
 int ar7240sw_reg_read (struct mii_bus*,int ) ;
 int ar7240sw_reg_set (struct mii_bus*,int ,int ) ;
 int dev_name (int *) ;
 int kfree (struct ar7240sw*) ;
 struct ar7240sw* kzalloc (int,int ) ;
 int pr_err (char*,int ,...) ;
 int pr_info (char*,int ,char*) ;
 scalar_t__ register_switch (struct switch_dev*,int ) ;
 scalar_t__ sw_is_ar7240 (struct ar7240sw*) ;
 scalar_t__ sw_is_ar934x (struct ar7240sw*) ;

__attribute__((used)) static struct ar7240sw *ar7240_probe(struct ag71xx *ag)
{
 struct ag71xx_platform_data *pdata = ag71xx_get_pdata(ag);
 struct mii_bus *mii = ag->mii_bus;
 struct ar7240sw *as;
 struct switch_dev *swdev;
 u32 ctrl;
 u16 phy_id1;
 u16 phy_id2;
 int i;

 phy_id1 = ar7240sw_phy_read(mii, 0, MII_PHYSID1);
 phy_id2 = ar7240sw_phy_read(mii, 0, MII_PHYSID2);
 if ((phy_id1 != AR7240_PHY_ID1 || phy_id2 != AR7240_PHY_ID2) &&
     (phy_id1 != AR934X_PHY_ID1 || phy_id2 != AR934X_PHY_ID2)) {
  pr_err("%s: unknown phy id '%04x:%04x'\n",
         dev_name(&mii->dev), phy_id1, phy_id2);
  return ((void*)0);
 }

 as = kzalloc(sizeof(*as), GFP_KERNEL);
 if (!as)
  return ((void*)0);

 as->mii_bus = mii;
 as->swdata = pdata->switch_data;

 swdev = &as->swdev;

 ctrl = ar7240sw_reg_read(mii, AR7240_REG_MASK_CTRL);
 as->ver = (ctrl >> AR7240_MASK_CTRL_VERSION_S) &
    AR7240_MASK_CTRL_VERSION_M;

 if (sw_is_ar7240(as)) {
  swdev->name = "AR7240/AR9330 built-in switch";
  swdev->ports = AR7240_NUM_PORTS - 1;
 } else if (sw_is_ar934x(as)) {
  swdev->name = "AR934X built-in switch";

  if (pdata->phy_if_mode == PHY_INTERFACE_MODE_GMII) {
   ar7240sw_reg_set(mii, AR934X_REG_OPER_MODE0,
      AR934X_OPER_MODE0_MAC_GMII_EN);
  } else if (pdata->phy_if_mode == PHY_INTERFACE_MODE_MII) {
   ar7240sw_reg_set(mii, AR934X_REG_OPER_MODE0,
      AR934X_OPER_MODE0_PHY_MII_EN);
  } else {
   pr_err("%s: invalid PHY interface mode\n",
          dev_name(&mii->dev));
   goto err_free;
  }

  if (as->swdata->phy4_mii_en) {
   ar7240sw_reg_set(mii, AR934X_REG_OPER_MODE1,
      AR934X_REG_OPER_MODE1_PHY4_MII_EN);
   swdev->ports = AR7240_NUM_PORTS - 1;
  } else {
   swdev->ports = AR7240_NUM_PORTS;
  }
 } else {
  pr_err("%s: unsupported chip, ctrl=%08x\n",
   dev_name(&mii->dev), ctrl);
  goto err_free;
 }

 swdev->cpu_port = AR7240_PORT_CPU;
 swdev->vlans = AR7240_MAX_VLANS;
 swdev->ops = &ar7240_ops;

 if (register_switch(&as->swdev, ag->dev) < 0)
  goto err_free;

 pr_info("%s: Found an %s\n", dev_name(&mii->dev), swdev->name);


 for (i = 0; i < AR7240_MAX_VLANS; i++)
  as->vlan_id[i] = i;

 as->vlan_table[0] = ar7240sw_port_mask_all(as);

 return as;

err_free:
 kfree(as);
 return ((void*)0);
}
