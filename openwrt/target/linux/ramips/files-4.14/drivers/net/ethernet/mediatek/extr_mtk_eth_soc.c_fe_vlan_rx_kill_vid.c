
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct net_device {int features; } ;
struct fe_priv {int vlan_map; } ;
typedef int __be16 ;


 size_t FE_REG_FE_DMA_VID_BASE ;
 int NETIF_F_HW_VLAN_CTAG_TX ;
 int clear_bit (int,int *) ;
 scalar_t__* fe_reg_table ;
 struct fe_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int fe_vlan_rx_kill_vid(struct net_device *dev,
          __be16 proto, u16 vid)
{
 struct fe_priv *priv = netdev_priv(dev);
 u32 idx = (vid & 0xf);

 if (!((fe_reg_table[FE_REG_FE_DMA_VID_BASE]) &&
       (dev->features & NETIF_F_HW_VLAN_CTAG_TX)))
  return 0;

 clear_bit(idx, &priv->vlan_map);

 return 0;
}
