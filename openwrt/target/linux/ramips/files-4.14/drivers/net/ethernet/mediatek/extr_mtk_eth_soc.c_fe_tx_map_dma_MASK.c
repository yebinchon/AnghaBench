#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct skb_frag_struct {int /*<<< orphan*/  page_offset; } ;
struct sk_buff {scalar_t__ ip_summed; int /*<<< orphan*/  xmit_more; int /*<<< orphan*/  len; } ;
struct net_device {int /*<<< orphan*/  dev; } ;
struct fe_tx_ring {size_t tx_next_idx; scalar_t__ tx_thresh; TYPE_2__* tx_dma; struct fe_tx_buf* tx_buf; } ;
struct fe_tx_buf {struct sk_buff* skb; } ;
struct fe_priv {TYPE_1__* soc; } ;
struct TYPE_9__ {int txd4; int /*<<< orphan*/  txd2; } ;
struct fe_map_state {size_t ring_idx; int def_txd4; int i; TYPE_4__ txd; int /*<<< orphan*/ * dev; } ;
struct TYPE_10__ {int gso_type; unsigned int nr_frags; struct skb_frag_struct* frags; int /*<<< orphan*/  gso_size; } ;
struct TYPE_8__ {int /*<<< orphan*/  check; } ;
struct TYPE_7__ {int /*<<< orphan*/  txd2; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* tx_dma ) (TYPE_4__*) ;} ;

/* Variables and functions */
 scalar_t__ CHECKSUM_PARTIAL ; 
 int /*<<< orphan*/  CONFIG_SOC_MT7621 ; 
 int /*<<< orphan*/  FE_REG_TX_CTX_IDX0 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 
 int SKB_GSO_TCPV4 ; 
 int SKB_GSO_TCPV6 ; 
 int TX_DMA_CHKSUM ; 
 int /*<<< orphan*/  TX_DMA_DESP2_DEF ; 
 int TX_DMA_DESP4_DEF ; 
 int TX_DMA_INS_VLAN ; 
 int TX_DMA_INS_VLAN_MT7621 ; 
 int /*<<< orphan*/  TX_DMA_LS0 ; 
 int /*<<< orphan*/  TX_DMA_LS1 ; 
 int TX_DMA_TSO ; 
 int VLAN_PRIO_SHIFT ; 
 scalar_t__ FUNC2 (struct fe_tx_ring*) ; 
 struct sk_buff* FUNC3 (struct sk_buff*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct fe_tx_ring*,struct fe_map_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct fe_tx_ring*,struct fe_map_state*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct fe_tx_ring*,struct fe_map_state*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct fe_tx_buf*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*,int /*<<< orphan*/ ) ; 
 struct fe_priv* FUNC11 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC15 (struct fe_priv*,int /*<<< orphan*/ ,struct net_device*,char*) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct skb_frag_struct*) ; 
 int /*<<< orphan*/  FUNC19 (struct skb_frag_struct*) ; 
 scalar_t__ FUNC20 (struct sk_buff*) ; 
 scalar_t__ FUNC21 (struct sk_buff*) ; 
 TYPE_5__* FUNC22 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC23 (struct sk_buff*) ; 
 int FUNC24 (struct sk_buff*) ; 
 scalar_t__ FUNC25 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC26 () ; 
 int /*<<< orphan*/  FUNC27 (TYPE_4__*) ; 
 TYPE_3__* FUNC28 (struct sk_buff*) ; 
 int /*<<< orphan*/  tx_err ; 
 scalar_t__ FUNC29 (int) ; 
 int /*<<< orphan*/  FUNC30 () ; 

__attribute__((used)) static int FUNC31(struct sk_buff *skb, struct net_device *dev,
			 int tx_num, struct fe_tx_ring *ring)
{
	struct fe_priv *priv = FUNC11(dev);
	struct fe_map_state st = {
		.dev = &dev->dev,
		.ring_idx = ring->tx_next_idx,
	};
	struct sk_buff *head = skb;
	struct fe_tx_buf *tx_buf;
	unsigned int nr_frags;
	int i, j;

	/* init tx descriptor */
	if (priv->soc->tx_dma)
		priv->soc->tx_dma(&st.txd);
	else
		st.txd.txd4 = TX_DMA_DESP4_DEF;
	st.def_txd4 = st.txd.txd4;

	/* TX Checksum offload */
	if (skb->ip_summed == CHECKSUM_PARTIAL)
		st.txd.txd4 |= TX_DMA_CHKSUM;

	/* VLAN header offload */
	if (FUNC25(skb)) {
		u16 tag = FUNC24(skb);

		if (FUNC0(CONFIG_SOC_MT7621))
			st.txd.txd4 |= TX_DMA_INS_VLAN_MT7621 | tag;
		else
			st.txd.txd4 |= TX_DMA_INS_VLAN |
				((tag >> VLAN_PRIO_SHIFT) << 4) |
				(tag & 0xF);
	}

	/* TSO: fill MSS info in tcp checksum field */
	if (FUNC21(skb)) {
		if (FUNC17(skb, 0)) {
			FUNC15(priv, tx_err, dev,
				   "GSO expand head fail.\n");
			goto err_out;
		}
		if (FUNC22(skb)->gso_type &
				(SKB_GSO_TCPV4 | SKB_GSO_TCPV6)) {
			st.txd.txd4 |= TX_DMA_TSO;
			FUNC28(skb)->check = FUNC9(FUNC22(skb)->gso_size);
		}
	}

next_frag:
	if (FUNC20(skb) && FUNC6(ring, &st, skb))
		goto err_dma;

	/* TX SG offload */
	nr_frags = FUNC22(skb)->nr_frags;
	for (i = 0; i < nr_frags; i++) {
		struct skb_frag_struct *frag;

		frag = &FUNC22(skb)->frags[i];
		if (FUNC5(ring, &st, FUNC18(frag),
				       frag->page_offset, FUNC19(frag)))
			goto err_dma;
	}

	skb = FUNC3(head, skb);
	if (skb)
		goto next_frag;

	/* set last segment */
	if (st.i & 0x1)
		st.txd.txd2 |= TX_DMA_LS0;
	else
		st.txd.txd2 |= TX_DMA_LS1;

	/* store skb to cleanup */
	tx_buf = &ring->tx_buf[st.ring_idx];
	tx_buf->skb = head;

	FUNC12(dev, head->len);
	FUNC23(head);

	FUNC7(ring, &st);
	ring->tx_next_idx = st.ring_idx;

	/* make sure that all changes to the dma ring are flushed before we
	 * continue
	 */
	FUNC30();
	if (FUNC29(FUNC2(ring) <= ring->tx_thresh)) {
		FUNC13(dev);
		FUNC26();
		if (FUNC29(FUNC2(ring) > ring->tx_thresh))
			FUNC14(dev);
	}

	if (FUNC16(FUNC10(dev, 0)) || !head->xmit_more)
		FUNC4(ring->tx_next_idx, FE_REG_TX_CTX_IDX0);

	return 0;

err_dma:
	j = ring->tx_next_idx;
	for (i = 0; i < tx_num; i++) {
		/* unmap dma */
		FUNC8(&dev->dev, &ring->tx_buf[j]);
		ring->tx_dma[j].txd2 = TX_DMA_DESP2_DEF;

		j = FUNC1(j);
	}
	/* make sure that all changes to the dma ring are flushed before we
	 * continue
	 */
	FUNC30();

err_out:
	return -1;
}