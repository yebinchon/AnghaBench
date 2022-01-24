#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct resource {int dummy; } ;
struct TYPE_13__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_3__ dev; } ;
struct of_device_id {scalar_t__ data; } ;
struct net_device {unsigned long base_addr; scalar_t__ irq; int vlan_features; int hw_features; int features; int max_mtu; int /*<<< orphan*/ * netdev_ops; } ;
struct fe_soc_data {int /*<<< orphan*/  (* init_data ) (struct fe_soc_data*,struct net_device*) ;scalar_t__* reg_table; } ;
struct TYPE_12__ {int rx_ring_size; int /*<<< orphan*/  frag_size; int /*<<< orphan*/  rx_buf_size; } ;
struct TYPE_11__ {int tx_ring_size; } ;
struct fe_priv {int flags; int /*<<< orphan*/  rx_napi; TYPE_2__ rx_ring; TYPE_1__ tx_ring; TYPE_4__* hw_stats; int /*<<< orphan*/  pending_work; int /*<<< orphan*/  msg_enable; struct fe_soc_data* soc; TYPE_3__* dev; struct net_device* netdev; int /*<<< orphan*/  switch_np; int /*<<< orphan*/  sysclk; int /*<<< orphan*/  page_lock; } ;
struct clk {int dummy; } ;
struct TYPE_14__ {int /*<<< orphan*/  syncp; int /*<<< orphan*/  stats_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_SOC_MT7621 ; 
 int EADDRNOTAVAIL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  ETH_DATA_LEN ; 
 int /*<<< orphan*/  FE_DEFAULT_MSG_ENABLE ; 
 int FE_FLAG_CALIBRATE_CLK ; 
 int FE_FLAG_HAS_SWITCH ; 
 int FE_FLAG_NAPI_WEIGHT ; 
 size_t FE_REG_FE_COUNTER_BASE ; 
 size_t FE_REG_FE_DMA_VID_BASE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct clk*) ; 
 int NETIF_F_HW_VLAN_CTAG_FILTER ; 
 int NETIF_F_HW_VLAN_CTAG_RX ; 
 int NETIF_F_HW_VLAN_CTAG_TX ; 
 void* NUM_DMA_DESC ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,TYPE_3__*) ; 
 struct net_device* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct clk*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 struct clk* FUNC8 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 struct clk* FUNC9 (TYPE_3__*,struct resource*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,struct clk*) ; 
 struct clk* fe_base ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fe_msg_level ; 
 int /*<<< orphan*/  fe_netdev_ops ; 
 int /*<<< orphan*/  fe_pending_work ; 
 int /*<<< orphan*/  fe_poll ; 
 scalar_t__* fe_reg_table ; 
 int /*<<< orphan*/  FUNC13 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct net_device*) ; 
 TYPE_4__* FUNC15 (int,int /*<<< orphan*/ ) ; 
 struct fe_priv* FUNC16 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC17 (struct fe_priv*,int /*<<< orphan*/ ,struct net_device*,char*,unsigned long,scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct net_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  of_fe_match ; 
 struct of_device_id* FUNC20 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC22 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC23 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (struct platform_device*,struct net_device*) ; 
 int /*<<< orphan*/  probe ; 
 int FUNC25 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (struct fe_soc_data*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC29(struct platform_device *pdev)
{
	struct resource *res = FUNC23(pdev, IORESOURCE_MEM, 0);
	const struct of_device_id *match;
	struct fe_soc_data *soc;
	struct net_device *netdev;
	struct fe_priv *priv;
	struct clk *sysclk;
	int err, napi_weight;

	FUNC7(&pdev->dev);

	match = FUNC20(of_fe_match, &pdev->dev);
	soc = (struct fe_soc_data *)match->data;

	if (soc->reg_table)
		fe_reg_table = soc->reg_table;
	else
		soc->reg_table = fe_reg_table;

	fe_base = FUNC9(&pdev->dev, res);
	if (FUNC2(fe_base)) {
		err = -EADDRNOTAVAIL;
		goto err_out;
	}

	netdev = FUNC4(sizeof(*priv));
	if (!netdev) {
		FUNC6(&pdev->dev, "alloc_etherdev failed\n");
		err = -ENOMEM;
		goto err_iounmap;
	}

	FUNC3(netdev, &pdev->dev);
	netdev->netdev_ops = &fe_netdev_ops;
	netdev->base_addr = (unsigned long)fe_base;

	netdev->irq = FUNC22(pdev, 0);
	if (netdev->irq < 0) {
		FUNC6(&pdev->dev, "no IRQ resource found\n");
		err = -ENXIO;
		goto err_free_dev;
	}

	if (soc->init_data)
		soc->init_data(soc, netdev);
	netdev->vlan_features = netdev->hw_features &
				~(NETIF_F_HW_VLAN_CTAG_TX |
				  NETIF_F_HW_VLAN_CTAG_RX);
	netdev->features |= netdev->hw_features;

	if (FUNC1(CONFIG_SOC_MT7621))
		netdev->max_mtu = 2048;

	/* fake rx vlan filter func. to support tx vlan offload func */
	if (fe_reg_table[FE_REG_FE_DMA_VID_BASE])
		netdev->features |= NETIF_F_HW_VLAN_CTAG_FILTER;

	priv = FUNC16(netdev);
	FUNC26(&priv->page_lock);
	if (fe_reg_table[FE_REG_FE_COUNTER_BASE]) {
		priv->hw_stats = FUNC15(sizeof(*priv->hw_stats), GFP_KERNEL);
		if (!priv->hw_stats) {
			err = -ENOMEM;
			goto err_free_dev;
		}
		FUNC26(&priv->hw_stats->stats_lock);
	}

	sysclk = FUNC8(&pdev->dev, NULL);
	if (!FUNC2(sysclk)) {
		priv->sysclk = FUNC5(sysclk);
	} else if ((priv->flags & FE_FLAG_CALIBRATE_CLK)) {
		FUNC6(&pdev->dev, "this soc needs a clk for calibration\n");
		err = -ENXIO;
		goto err_free_dev;
	}

	priv->switch_np = FUNC21(pdev->dev.of_node, "mediatek,switch", 0);
	if ((priv->flags & FE_FLAG_HAS_SWITCH) && !priv->switch_np) {
		FUNC6(&pdev->dev, "failed to read switch phandle\n");
		err = -ENODEV;
		goto err_free_dev;
	}

	priv->netdev = netdev;
	priv->dev = &pdev->dev;
	priv->soc = soc;
	priv->msg_enable = FUNC18(fe_msg_level, FE_DEFAULT_MSG_ENABLE);
	priv->rx_ring.frag_size = FUNC12(ETH_DATA_LEN);
	priv->rx_ring.rx_buf_size = FUNC11(priv->rx_ring.frag_size);
	priv->tx_ring.tx_ring_size = NUM_DMA_DESC;
	priv->rx_ring.rx_ring_size = NUM_DMA_DESC;
	FUNC0(&priv->pending_work, fe_pending_work);
	FUNC28(&priv->hw_stats->syncp);

	napi_weight = 16;
	if (priv->flags & FE_FLAG_NAPI_WEIGHT) {
		napi_weight *= 4;
		priv->tx_ring.tx_ring_size *= 4;
		priv->rx_ring.rx_ring_size *= 4;
	}
	FUNC19(netdev, &priv->rx_napi, fe_poll, napi_weight);
	FUNC13(netdev);

	err = FUNC25(netdev);
	if (err) {
		FUNC6(&pdev->dev, "error bringing up device\n");
		goto err_free_dev;
	}

	FUNC24(pdev, netdev);

	FUNC17(priv, probe, netdev, "mediatek frame engine at 0x%08lx, irq %d\n",
		   netdev->base_addr, netdev->irq);

	return 0;

err_free_dev:
	FUNC14(netdev);
err_iounmap:
	FUNC10(&pdev->dev, fe_base);
err_out:
	return err;
}