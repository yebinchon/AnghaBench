
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct fe_tx_buf {struct sk_buff* skb; } ;
struct device {int dummy; } ;


 scalar_t__ DMA_DUMMY_DESC ;
 int DMA_TO_DEVICE ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int dma_addr0 ;
 int dma_addr1 ;
 int dma_len0 ;
 int dma_len1 ;
 int dma_unmap_addr (struct fe_tx_buf*,int ) ;
 scalar_t__ dma_unmap_len (struct fe_tx_buf*,int ) ;
 int dma_unmap_len_set (struct fe_tx_buf*,int ,int ) ;
 int dma_unmap_page (struct device*,int ,scalar_t__,int ) ;

__attribute__((used)) static void fe_txd_unmap(struct device *dev, struct fe_tx_buf *tx_buf)
{
 if (dma_unmap_len(tx_buf, dma_len0))
  dma_unmap_page(dev,
          dma_unmap_addr(tx_buf, dma_addr0),
          dma_unmap_len(tx_buf, dma_len0),
          DMA_TO_DEVICE);

 if (dma_unmap_len(tx_buf, dma_len1))
  dma_unmap_page(dev,
          dma_unmap_addr(tx_buf, dma_addr1),
          dma_unmap_len(tx_buf, dma_len1),
          DMA_TO_DEVICE);

 dma_unmap_len_set(tx_buf, dma_addr0, 0);
 dma_unmap_len_set(tx_buf, dma_addr1, 0);
 if (tx_buf->skb && (tx_buf->skb != (struct sk_buff *)DMA_DUMMY_DESC))
  dev_kfree_skb_any(tx_buf->skb);
 tx_buf->skb = ((void*)0);
}
