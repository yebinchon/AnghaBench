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
struct platform_device {int dummy; } ;
struct mt7620_gsw {scalar_t__ irq; } ;
struct fe_priv {TYPE_1__* soc; struct device_node* switch_np; } ;
struct device_node {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  compatible; } ;
struct TYPE_3__ {struct mt7620_gsw* swpriv; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  gsw_interrupt_mt7621 ; 
 TYPE_2__* mediatek_gsw_match ; 
 int /*<<< orphan*/  FUNC2 (struct mt7620_gsw*,struct device_node*) ; 
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

	if (gsw->irq) {
		FUNC6(gsw->irq, gsw_interrupt_mt7621, 0,
			    "gsw", priv);
		FUNC0(gsw->irq);
	}

	FUNC2(gsw, np);

	if (gsw->irq)
		FUNC1(gsw->irq);

	return 0;
}