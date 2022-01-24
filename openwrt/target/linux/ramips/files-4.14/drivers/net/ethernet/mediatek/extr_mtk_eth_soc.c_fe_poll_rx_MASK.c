#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct sk_buff {int /*<<< orphan*/  protocol; int /*<<< orphan*/  ip_summed; struct net_device* dev; } ;
struct net_device_stats {unsigned int rx_bytes; int /*<<< orphan*/  rx_packets; int /*<<< orphan*/  rx_dropped; } ;
struct net_device {int features; int /*<<< orphan*/  dev; struct net_device_stats stats; } ;
struct napi_struct {int dummy; } ;
struct fe_soc_data {int checksum_bit; } ;
struct fe_rx_ring {int rx_calc_idx; int /*<<< orphan*/  rx_buf_size; int /*<<< orphan*/ ** rx_data; int /*<<< orphan*/  frag_size; int /*<<< orphan*/  frag_cache; struct fe_rx_dma* rx_dma; } ;
struct fe_rx_dma {int rxd2; unsigned int rxd1; int rxd4; int /*<<< orphan*/  rxd3; } ;
struct fe_priv {int flags; struct fe_rx_ring rx_ring; struct fe_soc_data* soc; struct net_device* netdev; } ;
typedef  scalar_t__ dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  CHECKSUM_UNNECESSARY ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  ETH_P_8021Q ; 
 int FE_FLAG_RX_2B_OFFSET ; 
 int FE_FLAG_RX_SG_DMA ; 
 int /*<<< orphan*/  FE_REG_FE_INT_STATUS ; 
 int /*<<< orphan*/  FE_REG_RX_CALC_IDX0 ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int NETIF_F_HW_VLAN_CTAG_RX ; 
 int NETIF_F_RXCSUM ; 
 int NET_IP_ALIGN ; 
 int NET_SKB_PAD ; 
 int FUNC0 (int) ; 
 int RX_DMA_DONE ; 
 unsigned int FUNC1 (int) ; 
 int RX_DMA_LSO ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,scalar_t__) ; 
 struct sk_buff* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct fe_rx_dma*,struct fe_rx_dma*) ; 
 int /*<<< orphan*/  FUNC12 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (struct fe_priv*,struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct napi_struct*,struct sk_buff*) ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (struct sk_buff*,unsigned int) ; 
 int /*<<< orphan*/  FUNC20 (struct sk_buff*,int) ; 
 scalar_t__ FUNC21 (int) ; 
 int /*<<< orphan*/  FUNC22 () ; 

__attribute__((used)) static int FUNC23(struct napi_struct *napi, int budget,
		      struct fe_priv *priv, u32 rx_intr)
{
	struct net_device *netdev = priv->netdev;
	struct net_device_stats *stats = &netdev->stats;
	struct fe_soc_data *soc = priv->soc;
	struct fe_rx_ring *ring = &priv->rx_ring;
	int idx = ring->rx_calc_idx;
	u32 checksum_bit;
	struct sk_buff *skb;
	u8 *data, *new_data;
	struct fe_rx_dma *rxd, trxd;
	int done = 0, pad;

	if (netdev->features & NETIF_F_RXCSUM)
		checksum_bit = soc->checksum_bit;
	else
		checksum_bit = 0;

	if (priv->flags & FE_FLAG_RX_2B_OFFSET)
		pad = 0;
	else
		pad = NET_IP_ALIGN;

	while (done < budget) {
		unsigned int pktlen;
		dma_addr_t dma_addr;

		idx = FUNC0(idx);
		rxd = &ring->rx_dma[idx];
		data = ring->rx_data[idx];

		FUNC11(&trxd, rxd);
		if (!(trxd.rxd2 & RX_DMA_DONE))
			break;

		/* alloc new buffer */
		new_data = FUNC16(&ring->frag_cache, ring->frag_size,
					   GFP_ATOMIC);
		if (FUNC21(!new_data)) {
			stats->rx_dropped++;
			goto release_desc;
		}
		dma_addr = FUNC7(&netdev->dev,
					  new_data + NET_SKB_PAD + pad,
					  ring->rx_buf_size,
					  DMA_FROM_DEVICE);
		if (FUNC21(FUNC8(&netdev->dev, dma_addr))) {
			FUNC18(new_data);
			goto release_desc;
		}

		/* receive data */
		skb = FUNC5(data, ring->frag_size);
		if (FUNC21(!skb)) {
			FUNC18(new_data);
			goto release_desc;
		}
		FUNC20(skb, NET_SKB_PAD + NET_IP_ALIGN);

		FUNC9(&netdev->dev, trxd.rxd1,
				 ring->rx_buf_size, DMA_FROM_DEVICE);
		pktlen = FUNC1(trxd.rxd2);
		skb->dev = netdev;
		FUNC19(skb, pktlen);
		if (trxd.rxd4 & checksum_bit)
			skb->ip_summed = CHECKSUM_UNNECESSARY;
		else
			FUNC17(skb);
		skb->protocol = FUNC10(skb, netdev);

		if (netdev->features & NETIF_F_HW_VLAN_CTAG_RX &&
		    FUNC3(trxd.rxd3))
			FUNC4(skb, FUNC13(ETH_P_8021Q),
					       FUNC3(trxd.rxd3));

#ifdef CONFIG_NET_MEDIATEK_OFFLOAD
		if (mtk_offload_check_rx(priv, skb, trxd.rxd4) == 0) {
#endif
			stats->rx_packets++;
			stats->rx_bytes += pktlen;

			FUNC15(napi, skb);
#ifdef CONFIG_NET_MEDIATEK_OFFLOAD
		} else {
			dev_kfree_skb(skb);
		}
#endif
		ring->rx_data[idx] = new_data;
		rxd->rxd1 = (unsigned int)dma_addr;

release_desc:
		if (priv->flags & FE_FLAG_RX_SG_DMA)
			rxd->rxd2 = FUNC2(ring->rx_buf_size);
		else
			rxd->rxd2 = RX_DMA_LSO;

		ring->rx_calc_idx = idx;
		/* make sure that all changes to the dma ring are flushed before
		 * we continue
		 */
		FUNC22();
		FUNC12(ring->rx_calc_idx, FE_REG_RX_CALC_IDX0);
		done++;
	}

	if (done < budget)
		FUNC12(rx_intr, FE_REG_FE_INT_STATUS);

	return done;
}