
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int data; } ;
struct page {int dummy; } ;
struct fe_tx_ring {int dummy; } ;
struct fe_map_state {int dummy; } ;


 int fe_tx_dma_map_page (struct fe_tx_ring*,struct fe_map_state*,struct page*,size_t,size_t) ;
 size_t offset_in_page (int ) ;
 size_t skb_headlen (struct sk_buff*) ;
 struct page* virt_to_page (int ) ;

__attribute__((used)) static int fe_tx_dma_map_skb(struct fe_tx_ring *ring, struct fe_map_state *st,
        struct sk_buff *skb)
{
 struct page *page = virt_to_page(skb->data);
 size_t offset = offset_in_page(skb->data);
 size_t size = skb_headlen(skb);

 return fe_tx_dma_map_page(ring, st, page, offset, size);
}
