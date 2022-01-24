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
struct mt7620_gsw {int /*<<< orphan*/ * base; } ;
struct fe_priv {int /*<<< orphan*/  dev; int /*<<< orphan*/ * mii_bus; TYPE_1__* soc; } ;
struct TYPE_2__ {scalar_t__ swpriv; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC2(struct fe_priv *priv)
{
	struct mt7620_gsw *gsw = (struct mt7620_gsw *) priv->soc->swpriv;

	/* is the mt7530 internal or external */
	if (priv->mii_bus && FUNC0(priv->mii_bus, 0x1f)) {
		FUNC1(priv->dev, gsw->base, NULL, 0);
		FUNC1(priv->dev, NULL, priv->mii_bus, 1);
	} else {
		FUNC1(priv->dev, gsw->base, NULL, 1);
	}

	return 0;
}