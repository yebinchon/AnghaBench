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
struct ar8xxx_priv {int chip_rev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ar8xxx_priv*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ar8xxx_priv*,int,int,int,int) ; 

__attribute__((used)) static void
FUNC2(struct ar8xxx_priv *priv, int phy)
{
	switch (priv->chip_rev) {
	case 1:
		/* For 100M waveform */
		FUNC0(priv, phy, 0, 0x02ea);
		/* Turn on Gigabit clock */
		FUNC0(priv, phy, 0x3d, 0x68a0);
		break;

	case 2:
		FUNC1(priv, phy, 0x7, 0x3c, 0x0);
		/* fallthrough */
	case 4:
		FUNC1(priv, phy, 0x3, 0x800d, 0x803f);
		FUNC0(priv, phy, 0x3d, 0x6860);
		FUNC0(priv, phy, 0x5, 0x2c46);
		FUNC0(priv, phy, 0x3c, 0x6000);
		break;
	}
}