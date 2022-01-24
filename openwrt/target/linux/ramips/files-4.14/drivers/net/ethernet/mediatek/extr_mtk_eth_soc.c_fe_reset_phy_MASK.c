#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct gpio_desc {int dummy; } ;
struct fe_priv {TYPE_1__* dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  GPIOD_OUT_HIGH ; 
 scalar_t__ FUNC0 (struct gpio_desc*) ; 
 int /*<<< orphan*/  FUNC1 (struct gpio_desc*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 struct gpio_desc* FUNC3 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct gpio_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (int /*<<< orphan*/ ,char*,int*) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 

__attribute__((used)) static void FUNC8(struct fe_priv *priv)
{
	int err, msec = 30;
	struct gpio_desc *phy_reset;

	phy_reset = FUNC3(priv->dev, "phy-reset",
					    GPIOD_OUT_HIGH);
	if (!phy_reset)
		return;

	if (FUNC0(phy_reset)) {
		FUNC2(priv->dev, "Error acquiring reset gpio pins: %ld\n",
			FUNC1(phy_reset));
		return;
	}

	err = FUNC6(priv->dev->of_node, "phy-reset-duration",
				   &msec);
	if (!err && msec > 1000)
		msec = 30;

	if (msec > 20)
		FUNC5(msec);
	else
		FUNC7(msec * 1000, msec * 1000 + 1000);

	FUNC4(phy_reset, 0);
}