
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tx_desc {int sdl; int cown; } ;
struct _tx_ring {int num_used; int free_index; struct tx_desc* desc; int * phys_tab; struct sk_buff** buff_tab; } ;
struct sw {int dev; struct _tx_ring tx_ring; } ;
struct sk_buff {int dummy; } ;


 int DMA_TO_DEVICE ;
 int TX_DESCS ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int dma_unmap_single (int ,int ,int ,int ) ;
 int eth_check_num_used (struct _tx_ring*) ;

__attribute__((used)) static void eth_complete_tx(struct sw *sw)
{
 struct _tx_ring *tx_ring = &sw->tx_ring;
 struct tx_desc *desc;
 int i;
 int index;
 int num_used = tx_ring->num_used;
 struct sk_buff *skb;

 index = tx_ring->free_index;
 desc = &(tx_ring)->desc[index];

 for (i = 0; i < num_used; i++) {
  if (!desc->cown)
   break;

  skb = tx_ring->buff_tab[index];
  tx_ring->buff_tab[index] = 0;

  if (skb)
   dev_kfree_skb_any(skb);

  dma_unmap_single(sw->dev, tx_ring->phys_tab[index], desc->sdl, DMA_TO_DEVICE);

  if (index == TX_DESCS - 1) {
   index = 0;
   desc = &(tx_ring)->desc[index];
  } else {
   index++;
   desc++;
  }
 }

 tx_ring->free_index = index;
 tx_ring->num_used -= i;
 eth_check_num_used(tx_ring);
}
