#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct tx_desc {int eor; int fsd; int lsd; int cown; int /*<<< orphan*/  sdp; int /*<<< orphan*/  sdl; } ;
struct _tx_ring {int phys_addr; scalar_t__* buff_tab; struct tx_desc* desc; } ;
struct _rx_ring {int phys_addr; int /*<<< orphan*/ * phys_tab; void** buff_tab; struct tx_desc* desc; } ;
struct sw {TYPE_1__* regs; int /*<<< orphan*/  dev; struct _tx_ring tx_ring; struct _rx_ring rx_ring; } ;
struct rx_desc {int eor; int fsd; int lsd; int cown; int /*<<< orphan*/  sdp; int /*<<< orphan*/  sdl; } ;
struct TYPE_2__ {int /*<<< orphan*/  ts_desc_base_addr0; int /*<<< orphan*/  ts_desc_ptr0; int /*<<< orphan*/  fs_desc_base_addr0; int /*<<< orphan*/  fs_desc_ptr0; int /*<<< orphan*/  dma_ring_ctrl; int /*<<< orphan*/  dma_auto_poll_cfg; int /*<<< orphan*/  fs_dma_ctrl0; } ;

/* Variables and functions */
 int CLR_FS_STATE ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int EIO ; 
 int ENOMEM ; 
 int FS_SUSPEND ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int QUEUE_THRESHOLD ; 
 int RX_DESCS ; 
 int /*<<< orphan*/  RX_POOL_ALLOC_SIZE ; 
 int /*<<< orphan*/  RX_SEGMENT_ALLOC_SIZE ; 
 int /*<<< orphan*/  RX_SEGMENT_MRU ; 
 int SKB_HEAD_ALIGN ; 
 int TS_SUSPEND ; 
 int TX_DESCS ; 
 int /*<<< orphan*/  TX_POOL_ALLOC_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct tx_desc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct sw *sw)
{
	int i;
	struct _rx_ring *rx_ring = &sw->rx_ring;
	struct _tx_ring *tx_ring = &sw->tx_ring;

	FUNC0(0, &sw->regs->fs_dma_ctrl0);
	FUNC0(TS_SUSPEND | FS_SUSPEND, &sw->regs->dma_auto_poll_cfg);
	FUNC0(QUEUE_THRESHOLD, &sw->regs->dma_ring_ctrl);
	FUNC0(CLR_FS_STATE | QUEUE_THRESHOLD, &sw->regs->dma_ring_ctrl);
	FUNC0(QUEUE_THRESHOLD, &sw->regs->dma_ring_ctrl);

	rx_ring->desc = FUNC3(sw->dev, RX_POOL_ALLOC_SIZE,
					    &rx_ring->phys_addr, GFP_KERNEL);
	if (!rx_ring->desc)
		return -ENOMEM;

	/* Setup RX buffers */
	FUNC4(rx_ring->desc, 0, RX_POOL_ALLOC_SIZE);

	for (i = 0; i < RX_DESCS; i++) {
		struct rx_desc *desc = &(rx_ring)->desc[i];
		void *buf;

		buf = FUNC5(RX_SEGMENT_ALLOC_SIZE);
		if (!buf)
			return -ENOMEM;

		desc->sdl = RX_SEGMENT_MRU;

		if (i == (RX_DESCS - 1))
			desc->eor = 1;

		desc->fsd = 1;
		desc->lsd = 1;

		desc->sdp = FUNC1(sw->dev, buf + SKB_HEAD_ALIGN,
					   RX_SEGMENT_MRU, DMA_FROM_DEVICE);

		if (FUNC2(sw->dev, desc->sdp))
			return -EIO;

		rx_ring->buff_tab[i] = buf;
		rx_ring->phys_tab[i] = desc->sdp;
		desc->cown = 0;
	}
	FUNC0(rx_ring->phys_addr, &sw->regs->fs_desc_ptr0);
	FUNC0(rx_ring->phys_addr, &sw->regs->fs_desc_base_addr0);

	tx_ring->desc = FUNC3(sw->dev, TX_POOL_ALLOC_SIZE,
					    &tx_ring->phys_addr, GFP_KERNEL);
	if (!tx_ring->desc)
		return -ENOMEM;

	/* Setup TX buffers */
	FUNC4(tx_ring->desc, 0, TX_POOL_ALLOC_SIZE);

	for (i = 0; i < TX_DESCS; i++) {
		struct tx_desc *desc = &(tx_ring)->desc[i];
		tx_ring->buff_tab[i] = 0;

		if (i == (TX_DESCS - 1))
			desc->eor = 1;

		desc->cown = 1;
	}
	FUNC0(tx_ring->phys_addr, &sw->regs->ts_desc_ptr0);
	FUNC0(tx_ring->phys_addr, &sw->regs->ts_desc_base_addr0);

	return 0;
}