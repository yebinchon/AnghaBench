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
typedef  int u32 ;
struct mt7620_gsw {int dummy; } ;
struct fe_priv {unsigned int* link; int /*<<< orphan*/  netdev; TYPE_1__* soc; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {scalar_t__ swpriv; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int FUNC1 (struct mt7620_gsw*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mt7620_gsw*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct fe_priv*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *_priv)
{
	struct fe_priv *priv = (struct fe_priv *)_priv;
	struct mt7620_gsw *gsw = (struct mt7620_gsw *)priv->soc->swpriv;
	u32 reg, i;

	reg = FUNC1(gsw, 0x700c);
	FUNC2(gsw, 0x700c, reg);

	for (i = 0; i < 5; i++)
		if (reg & FUNC0(i)) {
			unsigned int link;

			link = FUNC1(gsw,
					       0x3008 + (i * 0x100)) & 0x1;

			if (link != priv->link[i]) {
				priv->link[i] = link;
				if (link)
					FUNC4(priv->netdev,
						    "port %d link up\n", i);
				else
					FUNC4(priv->netdev,
						    "port %d link down\n", i);
			}
		}

	FUNC3(priv);

	return IRQ_HANDLED;
}