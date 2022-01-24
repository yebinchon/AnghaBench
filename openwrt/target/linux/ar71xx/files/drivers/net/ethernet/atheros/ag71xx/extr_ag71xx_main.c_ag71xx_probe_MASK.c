#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct resource {scalar_t__ start; scalar_t__ end; } ;
struct TYPE_16__ {struct ag71xx_platform_data* platform_data; } ;
struct platform_device {TYPE_5__ dev; } ;
struct net_device {unsigned long base_addr; int /*<<< orphan*/  irq; int /*<<< orphan*/  name; int /*<<< orphan*/  dev_addr; int /*<<< orphan*/ * ethtool_ops; int /*<<< orphan*/ * netdev_ops; } ;
struct ag71xx_platform_data {int /*<<< orphan*/  phy_if_mode; int /*<<< orphan*/  mac_addr; int /*<<< orphan*/  is_ar91xx; int /*<<< orphan*/  is_ar724x; scalar_t__ desc_pktlen_mask; scalar_t__ max_frame_len; scalar_t__ phy_mask; int /*<<< orphan*/ * mii_bus_dev; } ;
struct ag71xx_desc {int dummy; } ;
struct TYPE_13__ {void* order; int /*<<< orphan*/  desc_split; } ;
struct TYPE_12__ {void* order; } ;
struct TYPE_14__ {unsigned long data; int /*<<< orphan*/  function; } ;
struct ag71xx {scalar_t__ mac_base; int /*<<< orphan*/  napi; scalar_t__ stop_desc_dma; TYPE_4__* stop_desc; TYPE_2__ tx_ring; scalar_t__ desc_pktlen_mask; scalar_t__ max_frame_len; TYPE_1__ rx_ring; TYPE_3__ oom_timer; int /*<<< orphan*/  restart_work; int /*<<< orphan*/  lock; int /*<<< orphan*/  msg_enable; struct net_device* dev; struct platform_device* pdev; } ;
struct TYPE_15__ {scalar_t__ next; scalar_t__ ctrl; scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  AG71XX_DEFAULT_MSG_ENABLE ; 
 int /*<<< orphan*/  AG71XX_NAPI_WEIGHT ; 
 int /*<<< orphan*/  AG71XX_REG_MAC_CFG1 ; 
 int AG71XX_RX_RING_SIZE_DEFAULT ; 
 int AG71XX_TX_RING_DS_PER_PKT ; 
 int AG71XX_TX_RING_SIZE_DEFAULT ; 
 int /*<<< orphan*/  AG71XX_TX_RING_SPLIT ; 
 int EINVAL ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (struct ag71xx*) ; 
 int FUNC3 (struct ag71xx*) ; 
 int /*<<< orphan*/  FUNC4 (struct ag71xx*) ; 
 int /*<<< orphan*/  ag71xx_ethtool_ops ; 
 int /*<<< orphan*/  FUNC5 (struct ag71xx*) ; 
 int /*<<< orphan*/  ag71xx_interrupt ; 
 int /*<<< orphan*/  ag71xx_msg_level ; 
 int /*<<< orphan*/  ag71xx_netdev_ops ; 
 int /*<<< orphan*/  ag71xx_oom_timer_handler ; 
 int FUNC6 (struct ag71xx*) ; 
 int /*<<< orphan*/  FUNC7 (struct ag71xx*) ; 
 int /*<<< orphan*/  ag71xx_poll ; 
 int /*<<< orphan*/  ag71xx_restart_work_func ; 
 void* FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct ag71xx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_5__*,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_5__*) ; 
 struct net_device* FUNC12 (TYPE_5__*,int) ; 
 scalar_t__ FUNC13 (TYPE_5__*,scalar_t__,scalar_t__) ; 
 int FUNC14 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct net_device*) ; 
 TYPE_4__* FUNC15 (TYPE_5__*,int,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ag71xx* FUNC18 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct net_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC23 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct resource* FUNC24 (struct platform_device*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC25 (struct platform_device*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC26 (char*,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC27 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC29(struct platform_device *pdev)
{
	struct net_device *dev;
	struct resource *res;
	struct ag71xx *ag;
	struct ag71xx_platform_data *pdata;
	int tx_size, err;

	pdata = pdev->dev.platform_data;
	if (!pdata) {
		FUNC10(&pdev->dev, "no platform data specified\n");
		return -ENXIO;

	}

	if (pdata->mii_bus_dev == NULL && pdata->phy_mask) {
		FUNC10(&pdev->dev, "no MII bus device specified\n");
		return -EINVAL;
	}

	dev = FUNC12(&pdev->dev, sizeof(*ag));
	if (!dev)
		return -ENOMEM;

	if (!pdata->max_frame_len || !pdata->desc_pktlen_mask)
		return -EINVAL;

	res = FUNC23(pdev, IORESOURCE_MEM, 0);
	if (!res)
		return -EINVAL;

	FUNC1(dev, &pdev->dev);

	ag = FUNC18(dev);
	ag->pdev = pdev;
	ag->dev = dev;
	ag->msg_enable = FUNC19(ag71xx_msg_level,
					AG71XX_DEFAULT_MSG_ENABLE);
	FUNC28(&ag->lock);

	res = FUNC24(pdev, IORESOURCE_MEM, "mac_base");
	if (!res) {
		FUNC10(&pdev->dev, "no mac_base resource found\n");
		return -ENXIO;
	}

	ag->mac_base = FUNC13(&pdev->dev, res->start,
					    res->end - res->start + 1);
	if (!ag->mac_base)
		return -ENOMEM;

	dev->irq = FUNC22(pdev, 0);
	err = FUNC14(&pdev->dev, dev->irq, ag71xx_interrupt,
			       0x0, FUNC11(&pdev->dev), dev);
	if (err) {
		FUNC10(&pdev->dev, "unable to request IRQ %d\n", dev->irq);
		return err;
	}

	dev->base_addr = (unsigned long)ag->mac_base;
	dev->netdev_ops = &ag71xx_netdev_ops;
	dev->ethtool_ops = &ag71xx_ethtool_ops;

	FUNC0(&ag->restart_work, ag71xx_restart_work_func);

	FUNC16(&ag->oom_timer);
	ag->oom_timer.data = (unsigned long) dev;
	ag->oom_timer.function = ag71xx_oom_timer_handler;

	tx_size = AG71XX_TX_RING_SIZE_DEFAULT;
	ag->rx_ring.order = FUNC8(AG71XX_RX_RING_SIZE_DEFAULT);

	ag->max_frame_len = pdata->max_frame_len;
	ag->desc_pktlen_mask = pdata->desc_pktlen_mask;

	if (!pdata->is_ar724x && !pdata->is_ar91xx) {
		ag->tx_ring.desc_split = AG71XX_TX_RING_SPLIT;
		tx_size *= AG71XX_TX_RING_DS_PER_PKT;
	}
	ag->tx_ring.order = FUNC8(tx_size);

	ag->stop_desc = FUNC15(&pdev->dev,
					sizeof(struct ag71xx_desc),
					&ag->stop_desc_dma, GFP_KERNEL);

	if (!ag->stop_desc)
		return -ENOMEM;

	ag->stop_desc->data = 0;
	ag->stop_desc->ctrl = 0;
	ag->stop_desc->next = (u32) ag->stop_desc_dma;

	FUNC17(dev->dev_addr, pdata->mac_addr, ETH_ALEN);

	FUNC20(dev, &ag->napi, ag71xx_poll, AG71XX_NAPI_WEIGHT);

	FUNC4(ag);

	FUNC9(ag, AG71XX_REG_MAC_CFG1, 0);

	FUNC5(ag);

	FUNC4(ag);

	err = FUNC6(ag);
	if (err)
		return err;

	err = FUNC3(ag);
	if (err)
		goto err_phy_disconnect;

	FUNC25(pdev, dev);

	err = FUNC27(dev);
	if (err) {
		FUNC10(&pdev->dev, "unable to register net device\n");
		FUNC25(pdev, NULL);
		FUNC2(ag);
		goto err_phy_disconnect;
	}

	FUNC26("%s: Atheros AG71xx at 0x%08lx, irq %d, mode: %s\n",
		dev->name, (unsigned long) ag->mac_base, dev->irq,
		FUNC21(pdata->phy_if_mode));

	return 0;

err_phy_disconnect:
	FUNC7(ag);
	return err;
}