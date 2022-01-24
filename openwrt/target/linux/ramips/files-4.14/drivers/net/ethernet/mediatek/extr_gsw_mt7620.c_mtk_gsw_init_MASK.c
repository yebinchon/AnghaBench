#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct platform_device {int dummy; } ;
struct mt7620_gsw {scalar_t__ irq; } ;
struct fe_priv {TYPE_1__* dev; TYPE_2__* soc; struct device_node* switch_np; } ;
struct device_node {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  compatible; } ;
struct TYPE_5__ {struct mt7620_gsw* swpriv; } ;
struct TYPE_4__ {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  GSW_REG_IMR ; 
 int /*<<< orphan*/  PORT_IRQ_ST_CHG ; 
 int /*<<< orphan*/  gsw_interrupt_mt7620 ; 
 TYPE_3__* mediatek_gsw_match ; 
 int /*<<< orphan*/  FUNC0 (struct mt7620_gsw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mt7620_gsw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device_node*,int /*<<< orphan*/ ) ; 
 struct platform_device* FUNC4 (struct device_node*) ; 
 struct mt7620_gsw* FUNC5 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct fe_priv*) ; 

int FUNC7(struct fe_priv *priv)
{
	struct device_node *np = priv->switch_np;
	struct platform_device *pdev = FUNC4(np);
	struct mt7620_gsw *gsw;

	if (!pdev)
		return -ENODEV;

	if (!FUNC3(np, mediatek_gsw_match->compatible))
		return -EINVAL;

	gsw = FUNC5(pdev);
	priv->soc->swpriv = gsw;

	FUNC0(gsw, FUNC1(priv->dev->of_node));

	if (gsw->irq) {
		FUNC6(gsw->irq, gsw_interrupt_mt7620, 0,
			    "gsw", priv);
		FUNC2(gsw, ~PORT_IRQ_ST_CHG, GSW_REG_IMR);
	}

	return 0;
}