
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dev; } ;
struct fe_rx_ring {int rx_ring_size; int rx_phys; int rx_calc_idx; TYPE_1__* rx_dma; int rx_buf_size; scalar_t__* rx_data; int frag_size; int frag_cache; } ;
struct fe_priv {int flags; struct fe_rx_ring rx_ring; struct net_device* netdev; } ;
typedef scalar_t__ dma_addr_t ;
struct TYPE_2__ {unsigned int rxd1; int rxd2; } ;


 int DMA_FROM_DEVICE ;
 int ENOMEM ;
 int FE_FLAG_RX_2B_OFFSET ;
 int FE_FLAG_RX_SG_DMA ;
 int FE_PST_DRX_IDX0 ;
 int FE_REG_PDMA_RST_CFG ;
 int FE_REG_RX_BASE_PTR0 ;
 int FE_REG_RX_CALC_IDX0 ;
 int FE_REG_RX_MAX_CNT0 ;
 int GFP_ATOMIC ;
 int GFP_KERNEL ;
 int NET_IP_ALIGN ;
 scalar_t__ NET_SKB_PAD ;
 int RX_DMA_LSO ;
 int RX_DMA_PLEN0 (int ) ;
 int __GFP_ZERO ;
 TYPE_1__* dma_alloc_coherent (int *,int,int*,int) ;
 scalar_t__ dma_map_single (int *,scalar_t__,int ,int ) ;
 int dma_mapping_error (int *,scalar_t__) ;
 int fe_reg_w32 (int,int ) ;
 scalar_t__* kcalloc (int,int,int ) ;
 scalar_t__ page_frag_alloc (int *,int ,int ) ;
 scalar_t__ unlikely (int ) ;
 int wmb () ;

__attribute__((used)) static int fe_alloc_rx(struct fe_priv *priv)
{
 struct net_device *netdev = priv->netdev;
 struct fe_rx_ring *ring = &priv->rx_ring;
 int i, pad;

 ring->rx_data = kcalloc(ring->rx_ring_size, sizeof(*ring->rx_data),
   GFP_KERNEL);
 if (!ring->rx_data)
  goto no_rx_mem;

 for (i = 0; i < ring->rx_ring_size; i++) {
  ring->rx_data[i] = page_frag_alloc(&ring->frag_cache,
         ring->frag_size,
         GFP_KERNEL);
  if (!ring->rx_data[i])
   goto no_rx_mem;
 }

 ring->rx_dma = dma_alloc_coherent(&netdev->dev,
   ring->rx_ring_size * sizeof(*ring->rx_dma),
   &ring->rx_phys,
   GFP_ATOMIC | __GFP_ZERO);
 if (!ring->rx_dma)
  goto no_rx_mem;

 if (priv->flags & FE_FLAG_RX_2B_OFFSET)
  pad = 0;
 else
  pad = NET_IP_ALIGN;
 for (i = 0; i < ring->rx_ring_size; i++) {
  dma_addr_t dma_addr = dma_map_single(&netdev->dev,
    ring->rx_data[i] + NET_SKB_PAD + pad,
    ring->rx_buf_size,
    DMA_FROM_DEVICE);
  if (unlikely(dma_mapping_error(&netdev->dev, dma_addr)))
   goto no_rx_mem;
  ring->rx_dma[i].rxd1 = (unsigned int)dma_addr;

  if (priv->flags & FE_FLAG_RX_SG_DMA)
   ring->rx_dma[i].rxd2 = RX_DMA_PLEN0(ring->rx_buf_size);
  else
   ring->rx_dma[i].rxd2 = RX_DMA_LSO;
 }
 ring->rx_calc_idx = ring->rx_ring_size - 1;



 wmb();

 fe_reg_w32(ring->rx_phys, FE_REG_RX_BASE_PTR0);
 fe_reg_w32(ring->rx_ring_size, FE_REG_RX_MAX_CNT0);
 fe_reg_w32(ring->rx_calc_idx, FE_REG_RX_CALC_IDX0);
 fe_reg_w32(FE_PST_DRX_IDX0, FE_REG_PDMA_RST_CFG);

 return 0;

no_rx_mem:
 return -ENOMEM;
}
