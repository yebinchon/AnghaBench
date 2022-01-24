#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct switch_dev {char* name; char* alias; int /*<<< orphan*/ * ops; int /*<<< orphan*/  vlans; int /*<<< orphan*/  ports; int /*<<< orphan*/  cpu_port; struct device_node* of_node; } ;
struct rt305x_esw {int port_map; int port_disable; int reg_initval_fct2; int reg_initval_fpa2; int reg_led_polarity; int /*<<< orphan*/  irq; struct switch_dev swdev; int /*<<< orphan*/  reg_rw_lock; int /*<<< orphan*/  base; TYPE_1__* dev; } ;
struct resource {int dummy; } ;
struct TYPE_5__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct device_node {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RT305X_ESW_NUM_PORTS ; 
 int /*<<< orphan*/  RT305X_ESW_NUM_VIDS ; 
 int /*<<< orphan*/  RT305X_ESW_PORT6 ; 
 int /*<<< orphan*/  RT305X_ESW_PORT_ST_CHG ; 
 int /*<<< orphan*/  RT305X_ESW_REG_IMR ; 
 int /*<<< orphan*/  RT305X_ESW_REG_ISR ; 
 int FUNC2 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,struct resource*) ; 
 struct rt305x_esw* FUNC5 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct rt305x_esw*) ; 
 int /*<<< orphan*/  FUNC7 (struct rt305x_esw*) ; 
 int /*<<< orphan*/  esw_interrupt ; 
 int /*<<< orphan*/  esw_ops ; 
 int /*<<< orphan*/  FUNC8 (struct rt305x_esw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct device_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 struct resource* FUNC11 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct platform_device*,struct rt305x_esw*) ; 
 int FUNC13 (struct switch_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct switch_dev*) ; 

__attribute__((used)) static int FUNC16(struct platform_device *pdev)
{
	struct resource *res = FUNC11(pdev, IORESOURCE_MEM, 0);
	struct device_node *np = pdev->dev.of_node;
	const __be32 *port_map, *port_disable, *reg_init;
	struct switch_dev *swdev;
	struct rt305x_esw *esw;
	int ret;

	esw = FUNC5(&pdev->dev, sizeof(*esw), GFP_KERNEL);
	if (!esw)
		return -ENOMEM;

	esw->dev = &pdev->dev;
	esw->irq = FUNC9(np, 0);
	esw->base = FUNC4(&pdev->dev, res);
	if (FUNC0(esw->base))
		return FUNC1(esw->base);

	port_map = FUNC10(np, "mediatek,portmap", NULL);
	if (port_map)
		esw->port_map = FUNC2(*port_map);

	port_disable = FUNC10(np, "mediatek,portdisable", NULL);
	if (port_disable)
		esw->port_disable = FUNC2(*port_disable);

	reg_init = FUNC10(np, "ralink,fct2", NULL);
	if (reg_init)
		esw->reg_initval_fct2 = FUNC2(*reg_init);

	reg_init = FUNC10(np, "ralink,fpa2", NULL);
	if (reg_init)
		esw->reg_initval_fpa2 = FUNC2(*reg_init);

	reg_init = FUNC10(np, "mediatek,led_polarity", NULL);
	if (reg_init)
		esw->reg_led_polarity = FUNC2(*reg_init);

	swdev = &esw->swdev;
	swdev->of_node = pdev->dev.of_node;
	swdev->name = "rt305x-esw";
	swdev->alias = "rt305x";
	swdev->cpu_port = RT305X_ESW_PORT6;
	swdev->ports = RT305X_ESW_NUM_PORTS;
	swdev->vlans = RT305X_ESW_NUM_VIDS;
	swdev->ops = &esw_ops;

	ret = FUNC13(swdev, NULL);
	if (ret < 0) {
		FUNC3(&pdev->dev, "register_switch failed\n");
		return ret;
	}

	FUNC12(pdev, esw);

	FUNC14(&esw->reg_rw_lock);

	FUNC7(esw);

	reg_init = FUNC10(np, "ralink,rgmii", NULL);
	if (reg_init && FUNC2(*reg_init) == 1) {
		/* 
		 * External switch connected to RGMII interface. 
		 * Unregister the switch device after initialization. 
		 */
		FUNC3(&pdev->dev, "RGMII mode, not exporting switch device.\n");
		FUNC15(&esw->swdev);
		FUNC12(pdev, NULL);
		return -ENODEV;
	}

	ret = FUNC6(&pdev->dev, esw->irq, esw_interrupt, 0, "esw",
			       esw);

	if (!ret) {
		FUNC8(esw, RT305X_ESW_PORT_ST_CHG, RT305X_ESW_REG_ISR);
		FUNC8(esw, ~RT305X_ESW_PORT_ST_CHG, RT305X_ESW_REG_IMR);
	}

	return ret;
}