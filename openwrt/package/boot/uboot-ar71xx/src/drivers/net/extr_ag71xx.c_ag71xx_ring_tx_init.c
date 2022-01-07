
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct ag71xx_ring {int desc_size; scalar_t__ curr; TYPE_2__* buf; scalar_t__ descs_dma; } ;
struct ag71xx {struct ag71xx_ring tx_ring; } ;
struct TYPE_4__ {int * skb; TYPE_1__* desc; } ;
struct TYPE_3__ {int ctrl; scalar_t__ next; } ;


 int AG71XX_TX_RING_SIZE ;
 int DESC_EMPTY ;
 scalar_t__ virt_to_phys (scalar_t__) ;

__attribute__((used)) static void ag71xx_ring_tx_init(struct ag71xx *ag)
{
 struct ag71xx_ring *ring = &ag->tx_ring;
 int i;

 for (i = 0; i < AG71XX_TX_RING_SIZE; i++) {
  ring->buf[i].desc->next = (u32) virt_to_phys((ring->descs_dma +
   ring->desc_size * ((i + 1) % AG71XX_TX_RING_SIZE)));

  ring->buf[i].desc->ctrl = DESC_EMPTY;
  ring->buf[i].skb = ((void*)0);
 }

 ring->curr = 0;
}
