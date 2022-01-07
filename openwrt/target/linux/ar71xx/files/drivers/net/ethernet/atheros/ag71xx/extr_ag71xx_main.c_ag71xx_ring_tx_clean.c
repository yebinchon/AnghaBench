
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_3__ {int tx_errors; } ;
struct net_device {TYPE_1__ stats; } ;
struct ag71xx_ring {int curr; int dirty; TYPE_2__* buf; int order; } ;
struct ag71xx_desc {scalar_t__ ctrl; } ;
struct ag71xx {struct net_device* dev; struct ag71xx_ring tx_ring; } ;
struct TYPE_4__ {int * skb; scalar_t__ len; } ;


 int BIT (int ) ;
 int ag71xx_desc_empty (struct ag71xx_desc*) ;
 struct ag71xx_desc* ag71xx_ring_desc (struct ag71xx_ring*,size_t) ;
 int dev_kfree_skb_any (int *) ;
 int netdev_completed_queue (struct net_device*,size_t,size_t) ;
 int wmb () ;

__attribute__((used)) static void ag71xx_ring_tx_clean(struct ag71xx *ag)
{
 struct ag71xx_ring *ring = &ag->tx_ring;
 struct net_device *dev = ag->dev;
 int ring_mask = BIT(ring->order) - 1;
 u32 bytes_compl = 0, pkts_compl = 0;

 while (ring->curr != ring->dirty) {
  struct ag71xx_desc *desc;
  u32 i = ring->dirty & ring_mask;

  desc = ag71xx_ring_desc(ring, i);
  if (!ag71xx_desc_empty(desc)) {
   desc->ctrl = 0;
   dev->stats.tx_errors++;
  }

  if (ring->buf[i].skb) {
   bytes_compl += ring->buf[i].len;
   pkts_compl++;
   dev_kfree_skb_any(ring->buf[i].skb);
  }
  ring->buf[i].skb = ((void*)0);
  ring->dirty++;
 }


 wmb();

 netdev_completed_queue(dev, pkts_compl, bytes_compl);
}
