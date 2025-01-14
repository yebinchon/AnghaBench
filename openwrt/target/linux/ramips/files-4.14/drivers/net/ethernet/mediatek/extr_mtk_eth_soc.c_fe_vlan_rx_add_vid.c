
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct net_device {int features; int wanted_features; } ;
struct fe_priv {int vlan_map; } ;
typedef int __be16 ;


 size_t FE_REG_FE_DMA_VID_BASE ;
 int NETIF_F_HW_VLAN_CTAG_TX ;
 int fe_r32 (scalar_t__) ;
 scalar_t__* fe_reg_table ;
 int fe_w32 (int,scalar_t__) ;
 struct fe_priv* netdev_priv (struct net_device*) ;
 int netdev_update_features (struct net_device*) ;
 int netdev_warn (struct net_device*,char*) ;
 int set_bit (int,int *) ;
 scalar_t__ test_bit (int,int *) ;

__attribute__((used)) static int fe_vlan_rx_add_vid(struct net_device *dev,
         __be16 proto, u16 vid)
{
 struct fe_priv *priv = netdev_priv(dev);
 u32 idx = (vid & 0xf);
 u32 vlan_cfg;

 if (!((fe_reg_table[FE_REG_FE_DMA_VID_BASE]) &&
       (dev->features & NETIF_F_HW_VLAN_CTAG_TX)))
  return 0;

 if (test_bit(idx, &priv->vlan_map)) {
  netdev_warn(dev, "disable tx vlan offload\n");
  dev->wanted_features &= ~NETIF_F_HW_VLAN_CTAG_TX;
  netdev_update_features(dev);
 } else {
  vlan_cfg = fe_r32(fe_reg_table[FE_REG_FE_DMA_VID_BASE] +
    ((idx >> 1) << 2));
  if (idx & 0x1) {
   vlan_cfg &= 0xffff;
   vlan_cfg |= (vid << 16);
  } else {
   vlan_cfg &= 0xffff0000;
   vlan_cfg |= vid;
  }
  fe_w32(vlan_cfg, fe_reg_table[FE_REG_FE_DMA_VID_BASE] +
    ((idx >> 1) << 2));
  set_bit(idx, &priv->vlan_map);
 }

 return 0;
}
