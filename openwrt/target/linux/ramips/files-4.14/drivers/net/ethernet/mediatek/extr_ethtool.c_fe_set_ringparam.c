
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct net_device {TYPE_3__* netdev_ops; } ;
struct TYPE_5__ {void* rx_ring_size; } ;
struct TYPE_4__ {void* tx_ring_size; } ;
struct fe_priv {TYPE_2__ rx_ring; TYPE_1__ tx_ring; } ;
struct ethtool_ringparam {int tx_pending; int rx_pending; } ;
struct TYPE_6__ {int (* ndo_open ) (struct net_device*) ;int (* ndo_stop ) (struct net_device*) ;} ;


 void* BIT (scalar_t__) ;
 int EINVAL ;
 int MAX_DMA_DESC ;
 scalar_t__ fls (int) ;
 struct fe_priv* netdev_priv (struct net_device*) ;
 int stub1 (struct net_device*) ;
 int stub2 (struct net_device*) ;

__attribute__((used)) static int fe_set_ringparam(struct net_device *dev,
       struct ethtool_ringparam *ring)
{
 struct fe_priv *priv = netdev_priv(dev);

 if ((ring->tx_pending < 2) ||
     (ring->rx_pending < 2) ||
     (ring->rx_pending > MAX_DMA_DESC) ||
     (ring->tx_pending > MAX_DMA_DESC))
  return -EINVAL;

 dev->netdev_ops->ndo_stop(dev);

 priv->tx_ring.tx_ring_size = BIT(fls(ring->tx_pending) - 1);
 priv->rx_ring.rx_ring_size = BIT(fls(ring->rx_pending) - 1);

 dev->netdev_ops->ndo_open(dev);

 return 0;
}
