#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct mt753x_sw_id {int (* init ) (struct gsw_mt753x*) ;int /*<<< orphan*/  (* post_init ) (struct gsw_mt753x*) ;int /*<<< orphan*/  model; int /*<<< orphan*/  (* detect ) (struct gsw_mt753x*,struct chip_rev*) ;} ;
struct mt753x_mapping {int /*<<< orphan*/  name; } ;
struct mii_bus {int dummy; } ;
struct gsw_mt753x {int global_vlan_enable; scalar_t__ irq; TYPE_1__* dev; int /*<<< orphan*/  phy_status_poll; int /*<<< orphan*/  irq_worker; int /*<<< orphan*/  name; int /*<<< orphan*/  model; int /*<<< orphan*/  smi_addr; int /*<<< orphan*/  mii_lock; struct mii_bus* host_bus; } ;
struct device_node {int dummy; } ;
struct chip_rev {int /*<<< orphan*/  rev; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int FUNC0 (struct mt753x_sw_id**) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MT753X_DFL_SMI_ADDR ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,struct gsw_mt753x*) ; 
 struct gsw_mt753x* FUNC6 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct gsw_mt753x*) ; 
 int /*<<< orphan*/  FUNC8 (struct gsw_mt753x*) ; 
 int /*<<< orphan*/  FUNC9 (struct gsw_mt753x*,struct mt753x_mapping*) ; 
 struct mt753x_mapping* FUNC10 (struct device_node*) ; 
 scalar_t__ FUNC11 (struct gsw_mt753x*) ; 
 int /*<<< orphan*/  FUNC12 (struct gsw_mt753x*) ; 
 int /*<<< orphan*/  mt753x_irq_handler ; 
 int /*<<< orphan*/  mt753x_irq_worker ; 
 int /*<<< orphan*/  FUNC13 (struct gsw_mt753x*) ; 
 struct mt753x_sw_id** mt753x_sw_ids ; 
 int /*<<< orphan*/  FUNC14 (struct gsw_mt753x*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 struct mii_bus* FUNC16 (struct device_node*) ; 
 struct device_node* FUNC17 (struct device_node*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct device_node*,char*) ; 
 scalar_t__ FUNC19 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC20 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct platform_device*,struct gsw_mt753x*) ; 
 int /*<<< orphan*/  FUNC22 (struct gsw_mt753x*,struct chip_rev*) ; 
 int FUNC23 (struct gsw_mt753x*) ; 
 int /*<<< orphan*/  FUNC24 (struct gsw_mt753x*) ; 

__attribute__((used)) static int FUNC25(struct platform_device *pdev)
{
	struct gsw_mt753x *gsw;
	struct mt753x_sw_id *sw;
	struct device_node *np = pdev->dev.of_node;
	struct device_node *mdio;
	struct mii_bus *mdio_bus;
	int ret = -EINVAL;
	struct chip_rev rev;
	struct mt753x_mapping *map;
	int i;

	mdio = FUNC17(np, "mediatek,mdio", 0);
	if (!mdio)
		return -EINVAL;

	mdio_bus = FUNC16(mdio);
	if (!mdio_bus)
		return -EPROBE_DEFER;

	gsw = FUNC6(&pdev->dev, sizeof(struct gsw_mt753x), GFP_KERNEL);
	if (!gsw)
		return -ENOMEM;

	gsw->host_bus = mdio_bus;
	gsw->dev = &pdev->dev;
	FUNC15(&gsw->mii_lock);

	/* Switch hard reset */
	if (FUNC11(gsw))
		goto fail;

	/* Fetch the SMI address dirst */
	if (FUNC19(np, "mediatek,smi-addr", &gsw->smi_addr))
		gsw->smi_addr = MT753X_DFL_SMI_ADDR;

	/* Get LAN/WAN port mapping */
	map = FUNC10(np);
	if (map) {
		FUNC9(gsw, map);
		gsw->global_vlan_enable = 1;
		FUNC3(gsw->dev, "LAN/WAN VLAN setting=%s\n", map->name);
	}

	/* Load MAC port configurations */
	FUNC13(gsw);

	/* Check for valid switch and then initialize */
	for (i = 0; i < FUNC0(mt753x_sw_ids); i++) {
		if (!mt753x_sw_ids[i]->detect(gsw, &rev)) {
			sw = mt753x_sw_ids[i];

			gsw->name = rev.name;
			gsw->model = sw->model;

			FUNC3(gsw->dev, "Switch is MediaTek %s rev %d",
				 gsw->name, rev.rev);

			/* Initialize the switch */
			ret = sw->init(gsw);
			if (ret)
				goto fail;

			break;
		}
	}

	if (i >= FUNC0(mt753x_sw_ids)) {
		FUNC2(gsw->dev, "No mt753x switch found\n");
		goto fail;
	}

	gsw->irq = FUNC20(pdev, 0);
	if (gsw->irq >= 0) {
		ret = FUNC7(gsw->dev, gsw->irq, mt753x_irq_handler,
				       0, FUNC4(gsw->dev), gsw);
		if (ret) {
			FUNC2(gsw->dev, "Failed to request irq %d\n",
				gsw->irq);
			goto fail;
		}

		FUNC1(&gsw->irq_worker, mt753x_irq_worker);
	}

	FUNC21(pdev, gsw);

	gsw->phy_status_poll = FUNC18(gsw->dev->of_node,
						     "mediatek,phy-poll");

	FUNC8(gsw);

	FUNC14(gsw);

	if (sw->post_init)
		sw->post_init(gsw);

	if (gsw->irq >= 0)
		FUNC12(gsw);

	return 0;

fail:
	FUNC5(&pdev->dev, gsw);

	return ret;
}