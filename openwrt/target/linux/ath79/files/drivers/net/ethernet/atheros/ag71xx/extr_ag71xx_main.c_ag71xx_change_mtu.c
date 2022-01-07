
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int mtu; } ;
struct ag71xx {int dummy; } ;


 int AG71XX_REG_MAC_MFL ;
 int ag71xx_max_frame_len (int) ;
 int ag71xx_wr (struct ag71xx*,int ,int ) ;
 struct ag71xx* netdev_priv (struct net_device*) ;

__attribute__((used)) static int ag71xx_change_mtu(struct net_device *dev, int new_mtu)
{
 struct ag71xx *ag = netdev_priv(dev);

 dev->mtu = new_mtu;
 ag71xx_wr(ag, AG71XX_REG_MAC_MFL,
    ag71xx_max_frame_len(dev->mtu));

 return 0;
}
