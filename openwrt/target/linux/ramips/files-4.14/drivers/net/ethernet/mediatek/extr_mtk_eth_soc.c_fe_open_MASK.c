#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct net_device {int dummy; } ;
struct fe_priv {int flags; TYPE_2__* soc; int /*<<< orphan*/  rx_napi; TYPE_1__* phy; int /*<<< orphan*/  page_lock; } ;
struct TYPE_4__ {int pdma_glo_cfg; int tx_int; int rx_int; scalar_t__ (* has_carrier ) (struct fe_priv*) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  (* start ) (struct fe_priv*) ;} ;

/* Variables and functions */
 int FE_FLAG_RX_2B_OFFSET ; 
 int /*<<< orphan*/  FE_REG_PDMA_GLO_CFG ; 
 int FE_RX_2B_OFFSET ; 
 int FE_RX_DMA_EN ; 
 int FE_TX_DMA_EN ; 
 int FE_TX_WB_DDONE ; 
 int /*<<< orphan*/  FUNC0 (struct fe_priv*) ; 
 int FUNC1 (struct fe_priv*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct fe_priv*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct fe_priv* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (struct fe_priv*) ; 
 scalar_t__ FUNC12 (struct fe_priv*) ; 

__attribute__((used)) static int FUNC13(struct net_device *dev)
{
	struct fe_priv *priv = FUNC6(dev);
	unsigned long flags;
	u32 val;
	int err;

	err = FUNC1(priv);
	if (err) {
		FUNC0(priv);
		return err;
	}

	FUNC9(&priv->page_lock, flags);

	val = FE_TX_WB_DDONE | FE_RX_DMA_EN | FE_TX_DMA_EN;
	if (priv->flags & FE_FLAG_RX_2B_OFFSET)
		val |= FE_RX_2B_OFFSET;
	val |= priv->soc->pdma_glo_cfg;
	FUNC3(val, FE_REG_PDMA_GLO_CFG);

	FUNC10(&priv->page_lock, flags);

	if (priv->phy)
		priv->phy->start(priv);

	if (priv->soc->has_carrier && priv->soc->has_carrier(priv))
		FUNC7(dev);

	FUNC5(&priv->rx_napi);
	FUNC2(priv->soc->tx_int | priv->soc->rx_int);
	FUNC8(dev);
#ifdef CONFIG_NET_MEDIATEK_OFFLOAD
	mtk_ppe_probe(priv);
#endif

	return 0;
}