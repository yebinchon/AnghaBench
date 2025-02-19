
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dev_addr; int mtu; } ;
struct ag71xx {int rx_buf_size; } ;


 int AG71XX_REG_MAC_MFL ;
 scalar_t__ NET_IP_ALIGN ;
 scalar_t__ NET_SKB_PAD ;
 int SKB_DATA_ALIGN (scalar_t__) ;
 int ag71xx_hw_enable (struct ag71xx*) ;
 int ag71xx_hw_set_macaddr (struct ag71xx*,int ) ;
 unsigned int ag71xx_max_frame_len (int ) ;
 int ag71xx_phy_start (struct ag71xx*) ;
 int ag71xx_rings_cleanup (struct ag71xx*) ;
 int ag71xx_wr (struct ag71xx*,int ,unsigned int) ;
 struct ag71xx* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;

__attribute__((used)) static int ag71xx_open(struct net_device *dev)
{
 struct ag71xx *ag = netdev_priv(dev);
 unsigned int max_frame_len;
 int ret;

 netif_carrier_off(dev);
 max_frame_len = ag71xx_max_frame_len(dev->mtu);
 ag->rx_buf_size = SKB_DATA_ALIGN(max_frame_len + NET_SKB_PAD + NET_IP_ALIGN);


 ag71xx_wr(ag, AG71XX_REG_MAC_MFL, max_frame_len);
 ag71xx_hw_set_macaddr(ag, dev->dev_addr);

 ret = ag71xx_hw_enable(ag);
 if (ret)
  goto err;

 ag71xx_phy_start(ag);

 return 0;

err:
 ag71xx_rings_cleanup(ag);
 return ret;
}
