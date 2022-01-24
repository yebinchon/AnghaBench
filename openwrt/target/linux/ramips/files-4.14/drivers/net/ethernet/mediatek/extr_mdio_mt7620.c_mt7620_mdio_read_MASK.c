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
struct mt7620_gsw {int dummy; } ;
struct mii_bus {struct fe_priv* priv; } ;
struct fe_priv {TYPE_1__* soc; } ;
struct TYPE_2__ {scalar_t__ swpriv; } ;

/* Variables and functions */
 int FUNC0 (struct mt7620_gsw*,int,int) ; 

int FUNC1(struct mii_bus *bus, int phy_addr, int phy_reg)
{
	struct fe_priv *priv = bus->priv;
	struct mt7620_gsw *gsw = (struct mt7620_gsw *)priv->soc->swpriv;

	return FUNC0(gsw, phy_addr, phy_reg);
}