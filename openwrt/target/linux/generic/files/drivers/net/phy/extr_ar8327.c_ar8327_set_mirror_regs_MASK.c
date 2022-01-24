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
struct ar8xxx_priv {int source_port; int monitor_port; scalar_t__ mirror_tx; scalar_t__ mirror_rx; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR8327_FWD_CTRL0_MIRROR_PORT ; 
 int AR8327_FWD_CTRL0_MIRROR_PORT_S ; 
 int AR8327_NUM_PORTS ; 
 int /*<<< orphan*/  AR8327_PORT_HOL_CTRL1_EG_MIRROR_EN ; 
 int /*<<< orphan*/  AR8327_PORT_LOOKUP_ING_MIRROR_EN ; 
 int /*<<< orphan*/  AR8327_REG_FWD_CTRL0 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct ar8xxx_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ar8xxx_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ar8xxx_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC5(struct ar8xxx_priv *priv)
{
	int port;

	/* reset all mirror registers */
	FUNC4(priv, AR8327_REG_FWD_CTRL0,
		   AR8327_FWD_CTRL0_MIRROR_PORT,
		   (0xF << AR8327_FWD_CTRL0_MIRROR_PORT_S));
	for (port = 0; port < AR8327_NUM_PORTS; port++) {
		FUNC2(priv, FUNC1(port),
			   AR8327_PORT_LOOKUP_ING_MIRROR_EN);

		FUNC2(priv, FUNC0(port),
			   AR8327_PORT_HOL_CTRL1_EG_MIRROR_EN);
	}

	/* now enable mirroring if necessary */
	if (priv->source_port >= AR8327_NUM_PORTS ||
	    priv->monitor_port >= AR8327_NUM_PORTS ||
	    priv->source_port == priv->monitor_port) {
		return;
	}

	FUNC4(priv, AR8327_REG_FWD_CTRL0,
		   AR8327_FWD_CTRL0_MIRROR_PORT,
		   (priv->monitor_port << AR8327_FWD_CTRL0_MIRROR_PORT_S));

	if (priv->mirror_rx)
		FUNC3(priv, FUNC1(priv->source_port),
			   AR8327_PORT_LOOKUP_ING_MIRROR_EN);

	if (priv->mirror_tx)
		FUNC3(priv, FUNC0(priv->source_port),
			   AR8327_PORT_HOL_CTRL1_EG_MIRROR_EN);
}