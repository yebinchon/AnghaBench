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
struct ar8xxx_priv {int initialized; int port4_phy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR8216_CTRL_RESET ; 
 int /*<<< orphan*/  AR8216_REG_CTRL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ar8xxx_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct ar8xxx_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ar8xxx_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct ar8xxx_priv *priv)
{
	if (priv->initialized)
		return 0;

	FUNC3(priv, AR8216_REG_CTRL, AR8216_CTRL_RESET);
	FUNC2(priv, AR8216_REG_CTRL, AR8216_CTRL_RESET, 0, 1000);

	priv->port4_phy = 1;
	/* disable port5 to prevent mii conflict */
	FUNC3(priv, FUNC0(5), 0);

	FUNC1(priv);

	priv->initialized = true;
	return 0;
}