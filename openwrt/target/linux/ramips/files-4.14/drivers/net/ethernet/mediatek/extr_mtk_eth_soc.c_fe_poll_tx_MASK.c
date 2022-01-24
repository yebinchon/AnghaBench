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
typedef  size_t u32 ;
struct sk_buff {scalar_t__ len; } ;
struct device {int dummy; } ;
struct net_device {struct device dev; } ;
struct fe_tx_ring {size_t tx_free_idx; scalar_t__ tx_thresh; struct fe_tx_buf* tx_buf; } ;
struct fe_tx_buf {struct sk_buff* skb; } ;
struct fe_priv {struct fe_tx_ring tx_ring; struct net_device* netdev; } ;

/* Variables and functions */
 scalar_t__ DMA_DUMMY_DESC ; 
 int /*<<< orphan*/  FE_REG_FE_INT_STATUS ; 
 int /*<<< orphan*/  FE_REG_TX_DTX_IDX0 ; 
 size_t FUNC0 (size_t) ; 
 scalar_t__ FUNC1 (struct fe_tx_ring*) ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,struct fe_tx_buf*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,int,unsigned int) ; 
 scalar_t__ FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static int FUNC10(struct fe_priv *priv, int budget, u32 tx_intr,
		      int *tx_again)
{
	struct net_device *netdev = priv->netdev;
	struct device *dev = &netdev->dev;
	unsigned int bytes_compl = 0;
	struct sk_buff *skb;
	struct fe_tx_buf *tx_buf;
	int done = 0;
	u32 idx, hwidx;
	struct fe_tx_ring *ring = &priv->tx_ring;

	idx = ring->tx_free_idx;
	hwidx = FUNC2(FE_REG_TX_DTX_IDX0);

	while ((idx != hwidx) && budget) {
		tx_buf = &ring->tx_buf[idx];
		skb = tx_buf->skb;

		if (!skb)
			break;

		if (skb != (struct sk_buff *)DMA_DUMMY_DESC) {
			bytes_compl += skb->len;
			done++;
			budget--;
		}
		FUNC4(dev, tx_buf);
		idx = FUNC0(idx);
	}
	ring->tx_free_idx = idx;

	if (idx == hwidx) {
		/* read hw index again make sure no new tx packet */
		hwidx = FUNC2(FE_REG_TX_DTX_IDX0);
		if (idx == hwidx)
			FUNC3(tx_intr, FE_REG_FE_INT_STATUS);
		else
			*tx_again = 1;
	} else {
		*tx_again = 1;
	}

	if (done) {
		FUNC5(netdev, done, bytes_compl);
		FUNC8();
		if (FUNC9(FUNC6(netdev) &&
			     (FUNC1(ring) > ring->tx_thresh)))
			FUNC7(netdev);
	}

	return done;
}