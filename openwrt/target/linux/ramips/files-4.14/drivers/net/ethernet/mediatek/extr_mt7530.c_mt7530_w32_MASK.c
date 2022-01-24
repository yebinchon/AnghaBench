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
typedef  int u32 ;
struct mt7530_priv {scalar_t__ base; scalar_t__ bus; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int) ; 

__attribute__((used)) static void
FUNC3(struct mt7530_priv *priv, u32 reg, u32 val)
{
	if (priv->bus) {
		FUNC1(priv->bus, 0x1f, 0x1f, (reg >> 6) & 0x3ff);
		FUNC1(priv->bus, 0x1f, (reg >> 2) & 0xf,  val & 0xffff);
		FUNC1(priv->bus, 0x1f, 0x10, val >> 16);
		return;
	}

	FUNC2("MT7530 MDIO Write[%04x]=%08x\n", reg, val);
	FUNC0(val, priv->base + reg);
}